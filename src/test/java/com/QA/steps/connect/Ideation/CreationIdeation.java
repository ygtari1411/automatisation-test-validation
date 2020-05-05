package com.QA.steps.connect.Ideation;

import com.QA.locators.CommonLocators;
import com.QA.locators.EnqueteLocators;
import com.QA.locators.IdeationLocators;
import com.QA.locators.SondageLocators;
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

public class CreationIdeation {

    private final WebDriver driver = GenerateurDriver.driver;

    @And("l utilisateur attend l'apparition du Widget_Ideation")
    public void lUtilisateurAttendLApparitionDuWidget_Ideation() {

        WebElement modules1 = (new WebDriverWait(driver, 50))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(IdeationLocators.Widget_Ideation)));

    }


    @Then("vérifier que l idée est crée")
    public void vérifierQueLIdéeEstCrée() {


        String str1 = ActionsCommunes.DataProvider("Libelle_Creation_Idee");
        String str2 = ActionsCommunes.DataProvider("Description_Creation_Idee");

        Boolean modules1 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.refreshed(ExpectedConditions.attributeToBe(By.xpath(IdeationLocators.Libelle_Premiere_Idee_Affichee), "innerText", str1)));

        Boolean modules2 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.refreshed(ExpectedConditions.attributeToBe(By.xpath(IdeationLocators.Description_Premiere_Idee_Affichee), "innerText", str2)));

        String str3 = driver.findElement(By.xpath(IdeationLocators.Libelle_Premiere_Idee_Affichee)).getAttribute("innerText");
        String str4 = driver.findElement(By.xpath(IdeationLocators.Description_Premiere_Idee_Affichee)).getAttribute("innerText");


        Assert.assertEquals(str1, str3);
        Assert.assertEquals(str2, str4);


    }

    @Then("verifier que l idéation créé n est pas affichée")
    public void verifierQueLIdéationCrééNEstPasAffichée() {

        String str1 = ActionsCommunes.DataProvider("Libelle_Creation_Idee");
        String str2 = ActionsCommunes.DataProvider("Description_Creation_Idee");

        Boolean modules1 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.refreshed(ExpectedConditions.attributeToBeNotEmpty(driver.findElement(By.xpath(IdeationLocators.Libelle_Premiere_Idee_Affichee)),"innerText")));

        Boolean modules2 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.refreshed(ExpectedConditions.attributeToBeNotEmpty(driver.findElement(By.xpath(IdeationLocators.Description_Premiere_Idee_Affichee)), "innerText")));

        String str3 = driver.findElement(By.xpath(IdeationLocators.Libelle_Premiere_Idee_Affichee)).getAttribute("innerText");
        String str4 = driver.findElement(By.xpath(IdeationLocators.Description_Premiere_Idee_Affichee)).getAttribute("innerText");


        Assert.assertNotEquals(str1, str3);
        Assert.assertNotEquals(str2, str4);

    }
}
