# Xray VLESS 节点（Railway 部署）

手机翻墙自用节点：VLESS + WebSocket，TLS 由 Railway 域名层提供。

## 配置参数

- UUID：`09b03064-617a-4584-9d6f-fa9c4f8eabe3`
- WS 路径：`/ray-09b0`
- 协议：vless，encryption=none，transport=ws，security=tls（在客户端侧开启）
- 服务端监听端口由 Railway 通过 `PORT` 环境变量注入，启动命令里已自动替换

## 部署

已通过 GitHub 仓库 `xray-node` → Railway Deploy from GitHub 的方式部署；
域名在 Railway 服务的 Settings → Networking 里生成。

## 客户端（手机）

部署完成后会得到一条 `vless://` 导入链接：

- Android：装 v2rayNG（免费），右上角 + → 从剪贴板导入
- iOS：装 FoXray 或 Streisand（免费）→ 导入链接；或 Shadowrocket（付费）

## 额度

Railway 免费额度主要消耗在出站流量上：$5 试用 ≈ 100GB；Free 计划每月 $1 ≈ 20GB。
刷网页、看消息足够，刷视频很快见底。超额服务会被停。
