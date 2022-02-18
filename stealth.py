from selenium import webdriver
from selenium_stealth import stealth
import time

options = webdriver.ChromeOptions()
options.add_argument("start-maximized")

# options.add_argument("--headless")

options.add_experimental_option("excludeSwitches", ["enable-automation"])
options.add_experimental_option('useAutomationExtension', False)
driver = webdriver.Chrome(options=options, executable_path=r"/home/mike/chromedriver")

stealth(driver,
        languages=["en-US", "en"],
        vendor="Google Inc.",
        platform="Win32",
        webgl_vendor="Intel Inc.",
        renderer="Intel Iris OpenGL Engine",
        fix_hairline=True,
        )

url = "https://www.kijiji.ca/t-login.html"
driver.get(url)
#driver.find_element(By.ID, "emailOrNickname").click()
#driver.find_element(By.ID, "emailOrNickname").send_keys("mathbike8@gmail.com")


time.sleep(5)
#driver.quit()
