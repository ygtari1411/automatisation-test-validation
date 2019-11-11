package com.QA.steps.connect.news;

import com.QA.locators.CommonLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

public class TagCollaborateurNews {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @And("l'utilisateur selectionne le profile du tag")
    public void lUtilisateurSelectionneLeProfileDuTag() throws InterruptedException {

        action.pause(driver, 3500);
        driver.findElement(By.cssSelector(CommonLocators.Option_Liste_Profil_Tag)).click();

    }

    @Then("vérifier que le tag est affiché correctement dans la News ajoutée")
    public void vérifierQueLeTagEstAffichéCorrectementDansLaNewsAjoutée() throws InterruptedException {

        action.pause(driver, 300);
        WebElement modules = (new WebDriverWait(driver, 10))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Notification_Action_Reussie)));
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Action_Reussie)).getText().contains("succès"));
        List<WebElement> Element3 = driver.findElements(By.cssSelector("span[class=mention]"));
        Assert.assertEquals(1, Element3.size());

    }


}
