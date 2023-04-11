package com.QA.steps;

import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class MyStepdefs {


    @And("test")
    public void test() throws InterruptedException {

        final WebDriver driver = GenerateurDriver.driver;
        ActionsCommunes action = new ActionsCommunes();


        driver.findElement(By.xpath("/html/body/div/section[1]/div/div/form/div[1]/input")).sendKeys("cbaudot");
        driver.findElement(By.xpath("/html/body/div/section[1]/div/div/form/div[2]/input")).sendKeys("Pdmdp2021!");

        action.pause(driver, 500);


        driver.findElement(By.xpath("/html/body/div/section[1]/div/div/form/div[3]/input")).click();

        action.pause(driver, 500);


        WebElement l = driver.findElement(By.xpath("/html/body/app-root/div[4]/app-spa-host/div/incap-root/app-benefit/div/div/as-split/as-split-area[1]/div/div[3]/app-salary-maintenance/div/div/div[2]/div/div/div[2]/div[2]/div/div[2]/button"));
        JavascriptExecutor j = (JavascriptExecutor) driver;
        j.executeScript("arguments[0].click();", l);


        action.pause(driver, 500);


    }


}
