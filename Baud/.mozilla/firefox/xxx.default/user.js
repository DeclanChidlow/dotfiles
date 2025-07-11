// Integrated calculator in urlbar
user_pref("browser.urlbar.suggest.calculator", true);

// Integrated unit converter in urlbar
user_pref("browser.urlbar.unitConversion.enabled", true);

// Use compact mode
user_pref("browser.compactmode.show", true);
user_pref("browser.uidensity", 1);

user_pref("sidebar.verticalTabs", true);
user_pref("browser.tabs.groups.enabled", true);

// Allow userChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Remove Sponsor crap
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);

// Show URLs as Punycode
user_pref("network.IDN_show_punycode", true);

// Remove crappy scrolling
user_pref("apz.gtk.kinetic_scroll.enabled", false);

// Remove back and forward touchpad gestures
user_pref("browser.gesture.swipe.left", "");
user_pref("browser.gesture.swipe.right", "");

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Disable Animations
user_pref("toolkit.cosmeticAnimations.enabled", false);

// Better Spell Check
user_pref("layout.spellcheckDefault", 2);

// Don't truncate pasting
user_pref("editor.truncate_user_pastes", false);

// Better PDF handling
user_pref("pdfjs.enableScripting", false);

// Backspace to go back to top
user_pref("browser.backspace_action", 1);

// Don't close bookmark sidebar
user_pref("browser.bookmarks.openInTabClosesMenu", false);

// Enable Hardware Acceleration
user_pref("media.ffmpeg.vaapi.enabled", true);
user_pref("media.rdd-ffmpeg.enabled", true);
user_pref("media.navigator.mediadatadecoder_vpx_enabled", true);
user_pref("gfx.webrender.all", true);

// Improve Fonts and Emoji
user_pref("gfx.font_rendering.fontconfig.max_generic_substitutions", 127);
user_pref("gfx.font_rendering.opentype_svg.enabled", false);

// Improve Fullscreen
user_pref("full-screen-api.ignore-widgets", true);
user_pref("full-screen-api.warning.timeout", 0);

// Improve Safe Browsing
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);

// Disable Experiments
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

// Disable Telemetry
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

// Disable Addons Crap
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);

// Better Keyboard Navigation
user_pref("browser.display.focus_ring_on_anything", true);

// Allow for Browser Toolbox
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);
