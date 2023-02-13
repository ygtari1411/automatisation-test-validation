package com.QA.steps;

import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class MyStepdefs {


    @And("test")
    public void test() {

        final WebDriver driver = GenerateurDriver.driver;
        ActionsCommunes action = new ActionsCommunes();


        driver.findElement(By.xpath("/html/body/div/section[1]/div/div/form/div[1]/input")).sendKeys("gestionnaire-survenance");
        driver.findElement(By.xpath("/html/body/div/section[1]/div/div/form/div[2]/input")).sendKeys("Desktop@2021");
        driver.findElement(By.xpath("/html/body/div/section[1]/div/div/form/div[3]/input")).click();

    }


}
