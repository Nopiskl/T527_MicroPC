rule = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.platform-soc_3000000_codec_mach" },
    },
  },
  apply_properties = {
    ["device.description"] = "HPOUT Audio",
  },
}
table.insert(alsa_monitor.rules, rule)

rule = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.platform-soc_3000000_i2s2_mach" },
    },
  },
  apply_properties = {
    ["device.description"] = "HDMI Audio",
  },
}

table.insert(alsa_monitor.rules, rule)
