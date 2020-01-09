package com.QA.steps.connect.timeline;

import com.QA.locators.TimelineLocators;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class PublierUnAlbum {

    private final WebDriver driver = GenerateurDriver.driver;


    @Then("Vérifier que l album est publié")
    public void vérifierQueLAlbumEstPublié() {

         Assert.assertTrue(driver.findElement(By.cssSelector(TimelineLocators.Prmier_Album_Afficher)).isDisplayed());
    }


}
