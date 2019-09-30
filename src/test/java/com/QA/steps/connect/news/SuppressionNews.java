package com.QA.steps.connect.news;

import com.QA.locators.CommonLocators;
import com.QA.locators.NewsLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SuppressionNews {
    private String titre_News;
    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();


    @Then("verifier affichage de l'ecran NEWS")
    public void verifierAffichageDeLEcranNEWS() {

        WebElement modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(NewsLocators.Header_Section_News)));
        Assert.assertEquals("News", driver.findElement(By.xpath(NewsLocators.Header_Section_News)).getText());

    }


    @When("l'utilisateur supprime la première News dans la liste")
    public String lUtilisateurSupprimeLaPremièreNewsDansLaListe() throws InterruptedException {

        titre_News = driver.findElement(By.xpath(NewsLocators.Premier_Element_Liste_News)).getText();
        driver.findElement(By.xpath(NewsLocators.Bouton_Supprimer_News)).click();
        action.pause(driver, 200);
        driver.findElement(By.xpath(NewsLocators.Bouton_Validation_Suppression_News)).click();
        WebElement modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(NewsLocators.Header_Section_News)));
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Action_Reussie)).isDisplayed());
        action.pause(driver, 200);

        return titre_News;

    }

    @Then("vérifier la suppression de la News")
    public void vérifierLaSuppressionDeLaNews()  {

        Assert.assertNotEquals(driver.findElement(By.xpath(NewsLocators.Premier_Element_Liste_News)).getText(),titre_News);

    }
}