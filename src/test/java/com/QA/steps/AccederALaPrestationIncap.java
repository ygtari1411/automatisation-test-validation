package com.QA.steps;

import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class AccederALaPrestationIncap {

    private final WebDriver driver = GenerateurDriver.driver;


    @And("choisir l option maladie")
    public void choisirLOptionMaladie() {



        // Find the element you want to enable
        WebElement element = driver.findElement(By.xpath("//body/app-root[1]/div[4]/app-spa-host[1]/div[1]/ds-root[1]/app-occurrence[1]/div[1]/div[1]/as-split[1]/as-split-area[1]/div[2]/section[1]/app-occurrence-section[1]/form[1]/div[1]/div[2]/beys-form-field[1]/div[1]/div[1]/select[1]/option[7]"));

        // Enable the element using JavaScript
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].removeAttribute('disabled')", element);

        // Now you can interact with the element
        element.click();



    }


}
