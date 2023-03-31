// Integrated calculator at urlbar
user_pref("browser.urlbar.suggest.calculator", true);

// Integrated unit convertor at urlbar
user_pref("browser.urlbar.unitConversion.enabled", true);

// Use compact mode
user_pref("browser.compactmode.show", true);
user_pref("browser.uidensity", 1);

// Remove crappy scrolling
user_pref("apz.gtk.kinetic_scroll.enabled", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Disable Animations
user_pref("toolkit.cosmeticAnimations.enabled", false);

// Better Spell Check
user_pref("layout.spellcheckDefault", 2);

// Backspace to go back to top
user_pref("browser.backspace_action", 1);

// Enable VA-API Hardware Acceleration
user_pref("media.ffmpeg.vaapi.enabled", true);

// Improve Fonts and Emoji
user_pref("gfx.font_rendering.fontconfig.max_generic_substitutions", 127);
user_pref("font.name-list.emoji", emoji)
user_pref("gfx.font_rendering.opentype_svg.enabled", false);

// Improve Fullscreen
user_pref("full-screen-api.ignore-widgets", true);
user_pref("full-screen-api.warning.timeout", 0);

// Set Autocorrect Lanugage
user_pref("spellchecker.dictionary", en_AU);

// Load page as soon as possible
user_pref("nglayout.initialpaint.delay", 0);
user_pref("content.notify.backoffcount", 5);
user_pref("content.notify.interval", 849999);
user_pref("content.interrupt.parsing", true);

// Improve Privacy
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
