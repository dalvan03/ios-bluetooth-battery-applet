# Reddit Post Kit — iOS Bluetooth Battery Monitor Applet

## Media Files Ready to Upload (Gallery / Carousel)
Upload these images from [`applet/reddit-media/`](file:///home/xdan/Desenvolvimento/Projetos/applet/reddit-media) as an **Image Gallery** on Reddit:
1. [`01-applet-popover-dark.png`](file:///home/xdan/Desenvolvimento/Projetos/applet/reddit-media/01-applet-popover-dark.png) — *Full Applet Popover Showcase (Dark Glass Mode + Panel Bar Pill + 1-Click Connect List)*
2. [`03-applet-dark-vs-light.png`](file:///home/xdan/Desenvolvimento/Projetos/applet/reddit-media/03-applet-dark-vs-light.png) — *Side-by-side comparison: Dark Glass vs. Light Frosted*
3. [`02-applet-popover-light.png`](file:///home/xdan/Desenvolvimento/Projetos/applet/reddit-media/02-applet-popover-light.png) — *Full Applet Popover Showcase (Light Frosted Mode)*

---

## Option A: Dedicated Post for the Bluetooth Battery Applet

### Title
> `[OC] I built an iOS/macOS-style Bluetooth & Wireless Battery Monitor Applet for Cinnamon (4-layer detection + 1-click connect)`

### Post Body / First Comment
```markdown
Hey everyone!

Reporting Bluetooth battery levels on Linux can be notoriously inconsistent — some headphones report via BlueZ GATT (`org.bluez.Battery1`), wireless mice use UPower or kernel `hidpp_battery_*`, controllers use `/sys/class/power_supply/`, and older earbuds only report battery via PipeWire/PulseAudio HFP AT commands.

So I built **iOS Bluetooth Battery Monitor** (`ios-bluetooth-battery@dalvan`), a Cinnamon Panel Applet that unifies all 4 backends into an **iOS / macOS Sonoma-inspired battery rings popover**!

### ✨ Key Features
* **4-Layer High-Compatibility Engine (100% Async):**
  1. **BlueZ D-Bus (`org.bluez.Device1` + `org.bluez.Battery1`):** Real-time D-Bus signal listeners (`PropertiesChanged` / `ObjectManager`) so battery % and connection state update the exact second you turn on your headphones.
  2. **UPower (`UPowerGlib`):** Wireless mice, keyboards, and headsets.
  3. **Linux Kernel `sysfs` (`/sys/class/power_supply/*`):** Direct support for Logitech Unifying/Bolt (`hidpp`), PlayStation DualSense/DualShock, Xbox Wireless, and Apple Magic peripherals.
  4. **PipeWire / PulseAudio (`bluetooth.battery`):** Fallback for headsets reporting battery via HFP/HSP AT commands.
* **iOS Battery Rings + macOS Control Center List:**
  * Custom Cairo vector icons for Headphones, Speakers, Mice, Keyboards, Controllers, Phones, and Laptops.
  * Traffic-light battery rings (Green `#30D158`, Yellow `#FFD60A` ≤ 25%, Red `#FF453A` ≤ 15%).
  * **1-Click Connect / Disconnect:** Click any paired device in the popover list to connect or disconnect it right from the panel.
* **Smart Panel Indicator & Low Battery Alerts:**
  * Display the lowest connected battery `%`, all connected batteries (`90% • 65%`), active device count (`2 BT`), or icon only.
  * Native desktop notifications when a device drops below your configured threshold.

---

### 🚀 Installation

Submitted to the official **Cinnamon Spices Applets** repository ([PR #9162](https://github.com/linuxmint/cinnamon-spices-applets/pull/9162)), or install immediately in one command:

```bash
git clone https://github.com/dalvan03/ios-bluetooth-battery-applet.git
cd ios-bluetooth-battery-applet
./install.sh
```

Then right-click your Cinnamon panel -> **Applets** -> enable **iOS Bluetooth Battery Monitor**.

* 🔗 **GitHub Repository:** https://github.com/dalvan03/ios-bluetooth-battery-applet
* 🔗 **Cinnamon Spices PR:** https://github.com/linuxmint/cinnamon-spices-applets/pull/9162
```
