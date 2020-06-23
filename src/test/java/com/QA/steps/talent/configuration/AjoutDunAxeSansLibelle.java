package com.QA.steps.talent.configuration;

import com.QA.locators.ConfigurationTalentLocators;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class AjoutDunAxeSansLibelle {

    private static final WebDriver driver = GenerateurDriver.driver;
    private static final String border="1px solid rgb(240, 0, 51)";

    @Then("verifier que le champs libelle est encadre en rouge")
    public void verifierQueLeChampsLibelleEstEncadreEnRouge() {

        String actualBorder =driver.findElement(By.xpath(ConfigurationTalentLocators.Libelle_Ajout_Axe)).getCssValue("border");
        Assert.assertEquals(border,actualBorder);

    }



}
