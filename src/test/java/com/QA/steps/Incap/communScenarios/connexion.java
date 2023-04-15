package com.QA.steps.Incap.communScenarios;

import com.QA.base.streams;
import com.QA.locators.CommonLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.EtapesCommunes;
import com.QA.steps.GenerateurDriver;
import com.QA.utilités.XMLUtilities;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.Properties;

public class connexion {



    private static final Logger logger = Logger.getLogger(connexion.class);
    private final WebDriver driver = GenerateurDriver.driver;
    private static final Properties reader;
    private ActionsCommunes action = new ActionsCommunes();

    static {
        reader = streams.readers();
    }



    @Then("Verifier la reussite de la connexion")
    public void verifierLaReussiteDeLaConnexion() {
        WebElement modules1 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.New_Access_Bouton)));
        Assert.assertTrue(driver.findElements(By.xpath("//button[contains(text(),'Accès rapide')]")).size() != 0);

    }


    @Then("Verifier que la connexion a echouer")
    public void verifierQueLaConnexionAEchouer() {

        WebElement modules1 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.login_denied_message)));
        Assert.assertTrue(driver.findElements(By.xpath("//span[contains(text(),'Invalid username or password.')]")).size() != 0);


    }


    @And("se connecter un login et mot de passe invalides")
    public void seConnecterUnLoginEtMotDePasseInvalides() throws InterruptedException {

        logger.info("Connexion avec le user erroné  ");
        WebElement modules1 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Login_Bouton_connexion)));

        XMLUtilities utilities = new XMLUtilities();

        driver.findElement(By.id(CommonLocators.Login_Champ_Username)).sendKeys("cbaudot");
        action.pause(driver, 500);
        driver.findElement(By.id(CommonLocators.Login_Champ_password)).sendKeys("12345");
        action.pause(driver, 500);
        driver.findElement(By.xpath(CommonLocators.Login_Bouton_connexion)).click();

    }

    @And("se connecter avec un mot de passe invalide")
    public void seConnecterAvecUnMotDePasseInvalide() throws InterruptedException {
        logger.info("Connexion avec le user erroné  ");
        WebElement modules1 = (new WebDriverWait(driver, 100))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Login_Bouton_connexion)));

        XMLUtilities utilities = new XMLUtilities();

        driver.findElement(By.id(CommonLocators.Login_Champ_Username)).sendKeys("cbaudot");
        action.pause(driver, 500);
        driver.findElement(By.id(CommonLocators.Login_Champ_password)).sendKeys("12345");
        action.pause(driver, 500);
        driver.findElement(By.xpath(CommonLocators.Login_Bouton_connexion)).click();


    }

}
