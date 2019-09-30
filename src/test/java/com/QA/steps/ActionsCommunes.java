package com.QA.steps;

import org.openqa.selenium.WebDriver;

public class ActionsCommunes {

    public void pause(WebDriver driver, int time) throws InterruptedException {
        synchronized (driver) {
            driver.wait(time);
        }
    }


}
