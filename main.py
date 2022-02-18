from selenium import webdriver
from selenium.webdriver.common.by import By

#PATH = "~/startup/chromedriver"
PATH = "/home/mike/chromedriver"

driver = webdriver.Chrome(PATH)

driver.get("http://127.0.0.1:5000/")
#driver.maximize_window()

driver.implicitly_wait(0.5)

driver.find_element(By.ID, "email").click()
driver.find_element(By.ID, "email").send_keys("mathbike8@gmail.com")
driver.find_element(By.ID, "password").click()
driver.find_element(By.ID, "password").send_keys("dC#&M73xg!sgSTqojAhqh5rQMmys")
driver.find_element(By.CSS_SELECTOR, "input:nth-child(6)").click()

# driver.find_element(By.LINK_TEXT, "Repost all ads").click()
# driver.find_element(By.LINK_TEXT, "Logout").click()

#driver.quit()
