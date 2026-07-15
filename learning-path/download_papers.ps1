# 批量下载具身数据学习路线相关论文 PDF
# 用法: pwsh -File learning-path/download_papers.ps1
$ProgressPreference = 'SilentlyContinue'
$ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

$papers = @(
  # 01 数据格式与表示
  @{ dir='01-data-representation'; name='Learning-to-Walk-in-Minutes.pdf'; url='https://arxiv.org/pdf/2109.11978' },
  @{ dir='01-data-representation'; name='HumanoidPano.pdf';                url='https://arxiv.org/pdf/2503.09010' },
  # 02 真机遥操作
  @{ dir='02-teleoperation'; name='OmniH2O.pdf'; url='https://arxiv.org/pdf/2406.08858' },
  @{ dir='02-teleoperation'; name='HOMIE.pdf';   url='https://arxiv.org/pdf/2502.13013' },
  @{ dir='02-teleoperation'; name='TWIST.pdf';   url='https://arxiv.org/pdf/2505.02833' },
  @{ dir='02-teleoperation'; name='NuExo.pdf';   url='https://arxiv.org/pdf/2503.10554' },
  # 03 人类视频学习
  @{ dir='03-human-video'; name='HumanPlus.pdf';                    url='https://humanoid-ai.github.io/HumanPlus.pdf' },
  @{ dir='03-human-video'; name='Humanoid-Policy-Human-Policy.pdf'; url='https://arxiv.org/pdf/2503.13441' },
  @{ dir='03-human-video'; name='OKAMI.pdf';                        url='https://arxiv.org/pdf/2410.11792' },
  @{ dir='03-human-video'; name='Visual-Imitation-VideoMimic.pdf';  url='https://arxiv.org/pdf/2505.03729' },
  @{ dir='03-human-video'; name='HDMI.pdf';                         url='https://arxiv.org/pdf/2509.16757' },
  @{ dir='03-human-video'; name='NIL.pdf';                          url='https://arxiv.org/pdf/2503.10626' },
  # 04 动作重定向
  @{ dir='04-retargeting'; name='GMR-Retargeting-Matters.pdf';           url='https://arxiv.org/pdf/2510.02252' },
  @{ dir='04-retargeting'; name='OmniRetarget.pdf';                      url='https://arxiv.org/pdf/2509.26633' },
  @{ dir='04-retargeting'; name='Unsupervised-Neural-Motion-Retargeting.pdf'; url='https://arxiv.org/pdf/2406.00727' },
  # 05 仿真与 Sim2Real
  @{ dir='05-sim2real'; name='Humanoid-Gym.pdf'; url='https://arxiv.org/pdf/2404.05695' },
  @{ dir='05-sim2real'; name='GaussGym.pdf';     url='https://arxiv.org/pdf/2510.15352' },
  @{ dir='05-sim2real'; name='NeRF2Real.pdf';    url='https://arxiv.org/pdf/2210.04932' },
  # 06 数据集与基准
  @{ dir='06-datasets-benchmarks'; name='Kaiwu.pdf';                url='https://arxiv.org/pdf/2503.05231' },
  @{ dir='06-datasets-benchmarks'; name='MoCapAct.pdf';             url='https://arxiv.org/pdf/2208.07363' },
  @{ dir='06-datasets-benchmarks'; name='HumanoidBench.pdf';        url='https://arxiv.org/pdf/2403.10506' },
  @{ dir='06-datasets-benchmarks'; name='BEHAVIOR-Robot-Suite.pdf'; url='https://arxiv.org/pdf/2503.05652' },
  # 07 基础模型与 VLA
  @{ dir='07-foundation-vla'; name='WholeBodyVLA.pdf';                     url='https://arxiv.org/pdf/2512.11047' },
  @{ dir='07-foundation-vla'; name='Survey-Behavior-Foundation-Model.pdf'; url='https://arxiv.org/pdf/2506.20487' },
  @{ dir='07-foundation-vla'; name='BFM-Zero.pdf';                         url='https://arxiv.org/pdf/2511.04131' }
)

$ok = 0; $fail = 0; $log = @()
foreach ($p in $papers) {
  $out = Join-Path $root (Join-Path $p.dir $p.name)
  try {
    Invoke-WebRequest -Uri $p.url -OutFile $out -UserAgent $ua -TimeoutSec 60
    $size = (Get-Item $out).Length
    if ($size -lt 10240) { throw "file too small ($size bytes)" }
    Write-Output ("OK   [{0,7:N0}B] {1}/{2}" -f $size, $p.dir, $p.name)
    $ok++
  } catch {
    Write-Output ("FAIL          {0}/{1}  <- {2}  ({3})" -f $p.dir, $p.name, $p.url, $_.Exception.Message)
    if (Test-Path $out) { Remove-Item $out }
    $fail++
    $log += ("{0}/{1}  {2}" -f $p.dir, $p.name, $p.url)
  }
  Start-Sleep -Milliseconds 800
}
Write-Output ("`n===== DONE: {0} ok, {1} failed =====" -f $ok, $fail)
if ($fail -gt 0) { Write-Output "Failed list:"; $log | ForEach-Object { Write-Output ("  " + $_) } }
