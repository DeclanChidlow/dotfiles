// Integrated calculator at urlbar
user_pref("browser.urlbar.suggest.calculator", true);

// Integrated unit converter at urlbar
user_pref("browser.urlbar.unitConversion.enabled", true);

// Use compact mode
user_pref("browser.compactmode.show", true);
user_pref("browser.uidensity", 1);

// Allow userChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

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

// Backspace to go back to top
user_pref("browser.backspace_action", 1);

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

// Load page as soon as possible
user_pref("nglayout.initialpaint.delay", 0);
user_pref("content.notify.backoffcount", 5);
user_pref("content.notify.interval", 849999);
user_pref("content.interrupt.parsing", true);

// Improve Privacy
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);

// Allow for Browser Toolbox
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);
