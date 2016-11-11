# chrome-firefox-xvfb
Execute Chrome or Firefox with xvfb

# To use

There are two binaries:

* xvfb-chrome
* xvfb-firefox

These each spin up their own instance of xvfb and run themselves inside. You could then point webdriver or Karma to these executables for test execution

# Karma

To setup with Karma, just point `CHROME_BIN` and `FIREFOX_BIN` to `xvfb-chrome` and `xvfb-firefox` respectively.

If you choose to, you can easily execute your tests on both browsers by setting the `browsers` karma config to `["Chrome", "Firefox"]` or the karma command line argument `browsers` to `Chrome,Firefox`
