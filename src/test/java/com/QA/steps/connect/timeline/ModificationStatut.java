package com.QA.steps.connect.timeline;

import com.QA.locators.TimelineLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ModificationStatut {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @Then("verifier que la modification du statut est enregistrée")
    public void verifierQueLaModificationDuStatutEstEnregistrée() throws InterruptedException {

        action.pause(driver, 3000);
        Boolean modules = (new WebDriverWait(driver, 7))
                .until(ExpectedConditions.refreshed(ExpectedConditions.attributeContains(By.xpath(TimelineLocators.Premiere_Publication_Timeline), "innerText", ActionsCommunes.DataProvider("Champ_Input_Modification_Statut"))));
        String statut = driver.findElement(By.xpath(TimelineLocators.Premiere_Publication_Timeline)).getText();
        Assert.assertEquals( ActionsCommunes.DataProvider("Champ_Input_Modification_Statut") , statut);

    }

}
