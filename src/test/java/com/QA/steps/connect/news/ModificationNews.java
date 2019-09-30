package com.QA.steps.connect.news;

import com.QA.locators.NewsLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class ModificationNews {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();
    private String[] arr = new String[2];

    @When("l'utilisateur modifie une News")
    public String[] lUtilisateurModifieUneNews() throws InterruptedException {

        String s1 = driver.findElement(By.id(NewsLocators.Champ_Input_Titre_News_Existante)).getText();
        String s2 = driver.findElement(By.id(NewsLocators.Champ_Input_Contenu_News_Existante)).getText();
        driver.findElement(By.id(NewsLocators.Champ_Input_Titre_News_Existante)).clear();
        driver.findElement(By.id(NewsLocators.Champ_Input_Titre_News_Existante)).sendKeys("Titre News modifié");
        driver.findElement(By.id(NewsLocators.Champ_Input_Contenu_News_Existante)).clear();
        driver.findElement(By.id(NewsLocators.Champ_Input_Contenu_News_Existante)).sendKeys("Contenu News modifié");
        arr[0] = s1;
        arr[1] = s2;
        driver.findElement(By.xpath(NewsLocators.Bouton_Sauvegrade_News)).click();
        action.pause(driver,3000);
        driver.navigate().refresh();
        return arr;
    }

    @Then("verifier que la modification a été enregistrée")
    public void verifierQueLaModificationAÉtéEnregistrée() throws InterruptedException {

        action.pause(driver,1000);
        Assert.assertNotEquals(arr[0],driver.findElement(By.id(NewsLocators.Champ_Input_Titre_News_Existante)).getText());
        action.pause(driver,500);
        Assert.assertEquals("Titre News modifié",driver.findElement(By.id(NewsLocators.Champ_Input_Titre_News_Existante)).getText());
        action.pause(driver,500);
        Assert.assertNotEquals(arr[1],driver.findElement(By.id(NewsLocators.Champ_Input_Contenu_News_Existante)).getText());
        action.pause(driver,500);
        Assert.assertEquals("Contenu News modifié",driver.findElement(By.id(NewsLocators.Champ_Input_Contenu_News_Existante)).getText());

    }
}
