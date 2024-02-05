project_name: "lukaaa"

application: explore_match {
  label: "Explore Assistant Demo"
  # file: "explore-assistant.js"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","all_dashboards","folder_dashboards", "dashboard", "update_dashboard", "dashboard_dashboard_elements"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://us-central1-looker-private-demo.cloudfunctions.net/two-explore-assistant-endpoint--us-central1","https://looker-explore-assistant.app","https://generativelanguage.googleapis.com","https://us-central1-sandbox-trials.cloudfunctions.net/looker-explore-assistant-demo"]
  }
}
