<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SRE | Deployment Guard Dashboard</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --bg: #0f172a;
            --card-bg: #1e293b;
            --primary: #38bdf8;
            --success: #22c55e;
            --warning: #f59e0b;
            --text: #f8fafc;
        }

        body {
            font-family: 'Inter', system-ui, sans-serif;
            background-color: var(--bg);
            color: var(--text);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 20px;
        }

        .sidebar, .main-content {
            background: var(--card-bg);
            border-radius: 16px;
            padding: 24px;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }

        /* Sidebar Styling */
        .sidebar { border-left: 4px solid var(--primary); }
        .sidebar h2 { font-size: 1.2rem; margin-bottom: 20px; color: var(--primary); }
        .system-stat { margin-bottom: 15px; font-size: 0.9rem; border-bottom: 1px solid #334155; padding-bottom: 10px; }
        .system-stat span { color: #94a3b8; display: block; margin-bottom: 4px; }

        /* Main Content Styling */
        .header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 30px; }
        .status-badge { background: rgba(34, 197, 94, 0.2); color: var(--success); padding: 6px 12px; border-radius: 20px; font-weight: bold; font-size: 0.8rem; display: flex; align-items: center; gap: 8px; }
        
        .pulse { width: 8px; height: 8px; background: var(--success); border-radius: 50%; animation: pulse 2s infinite; }
        @keyframes pulse { 0% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(34, 197, 94, 0.7); } 70% { transform: scale(1); box-shadow: 0 0 0 10px rgba(34, 197, 94, 0); } 100% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(34, 197, 94, 0); } }

        .deployment-box { background: #0f172a; border-radius: 12px; padding: 20px; margin-bottom: 20px; border: 1px solid #334155; }
        .deployment-box h3 { margin: 0 0 10px 0; font-size: 1rem; }
        
        .log-area { font-family: 'Courier New', Courier, monospace; background: #000; color: #4ade80; padding: 15px; border-radius: 8px; height: 150px; overflow-y: auto; font-size: 0.85rem; line-height: 1.5; }

        .btn-check { width: 100%; background: var(--primary); color: var(--bg); border: none; padding: 12px; border-radius: 8px; font-weight: bold; cursor: pointer; transition: all 0.3s; margin-top: 20px; }
        .btn-check:hover { background: #7dd3fc; transform: translateY(-2px); }

        .metric-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; }
        .metric-card { background: #334155; padding: 15px; border-radius: 12px; text-align: center; }
        .metric-card i { font-size: 1.5rem; color: var(--primary); margin-bottom: 8px; }
        .metric-card div { font-size: 1.2rem; font-weight: bold; }
    </style>
</head>
<body>

<div class="container">
    <!-- Sidebar Info -->
    <div class="sidebar">
        <h2><i class="fas fa-shield-halved"></i> Deployment Guard</h2>
        <div class="system-stat">
            <span>PROJECT_NAME</span>
            <strong>MYPROJECT v1.0.4</strong>
        </div>
        <div class="system-stat">
            <span>PIPELINE_ENGINE</span>
            <strong>Jenkins CI/CD</strong>
        </div>
        <div class="system-stat">
            <span>TARGET_SERVER</span>
            <strong>Apache Tomcat 9.0</strong>
        </div>
        <div class="system-stat">
            <span>ARTIFACT_TYPE</span>
            <strong>Web Application Archive (.war)</strong>
        </div>
        
        <div class="metric-grid">
            <div class="metric-card">
                <i class="fas fa-clock"></i>
                <div id="uptime">0m</div>
                <small>Uptime</small>
            </div>
            <div class="metric-card">
                <i class="fas fa-microchip"></i>
                <div>98.2%</div>
                <small>Health</small>
            </div>
        </div>
    </div>

    <!-- Main Dashboard -->
    <div class="main-content">
        <div class="header">
            <div>
                <h1 style="margin:0;">SRE Status Board</h1>
                <p style="color:#94a3b8; margin:5px 0 0 0;">Monitoring deployment health in real-time.</p>
            </div>
            <div class="status-badge">
                <div class="pulse"></div> LIVE
            </div>
        </div>

        <div class="deployment-box">
            <h3><i class="fas fa-terminal"></i> Deployment Logs</h3>
            <div class="log-area" id="logs">
                [INFO] Fetching latest commit from GitHub...<br>
                [INFO] Jenkins triggered build #2...<br>
                [INFO] Maven compilation success.<br>
                [INFO] WAR artifact moved to Tomcat webapps.<br>
                [SUCCESS] Deployment Guard: Site is reachable at 9090.
            </div>
        </div>

        <div class="deployment-box">
            <h3><i class="fas fa-gauge-high"></i> Manual Guard Trigger</h3>
            <p style="font-size: 0.85rem; color: #94a3b8;">Click to simulate an automated Site Reliability check.</p>
            <button class="btn-check" onclick="runCheck()">RUN DEPLOYMENT CHECK</button>
        </div>
        
        <p style="text-align: center; color: #475569; font-size: 0.8rem;">
            Designed by Ibrahim | Powered by Jenkins & Java by using apache and maven git
        </p>
    </div>
</div>

<script>
    // Dynamic Uptime Timer
    let minutes = 0;
    setInterval(() => {
        minutes++;
        document.getElementById('uptime').innerText = minutes + "m";
    }, 60000);

    // Interactive Log Simulation
    function runCheck() {
        const logs = document.getElementById('logs');
        const btn = document.querySelector('.btn-check');
        
        btn.innerText = "CHECKING URL...";
        btn.style.background = "#f59e0b";
        
        logs.innerHTML += `<br><span style="color:#f59e0b">[PING] Checking http://localhost:9090/MYPROJECT...</span>`;
        
        setTimeout(() => {
            logs.innerHTML += `<br><span style="color:#22c55e">[SUCCESS] 200 OK - Trust Anchor Verified.</span>`;
            logs.innerHTML += `<br>[INFO] Deployment Guard: Green Light. Build Finalized.`;
            btn.innerText = "RUN DEPLOYMENT CHECK";
            btn.style.background = "#38bdf8";
            logs.scrollTop = logs.scrollHeight;
        }, 15000);
    }
</script>

</body>
</html>