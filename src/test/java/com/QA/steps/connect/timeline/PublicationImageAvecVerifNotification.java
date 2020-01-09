package com.QA.steps.connect.timeline;

import com.QA.locators.CommonLocators;
import com.QA.locators.TimelineLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class PublicationImageAvecVerifNotification {


    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();
    private String codeImage;

    @Then("verifier que l image a etait publie")
    public void verifierQueLImageAEtaitPublie() {

        WebElement modules2 = (new WebDriverWait(driver, 50))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(TimelineLocators.Premiere_Image_Publier_Timeline )));

        Assert.assertTrue(driver.findElement(By.xpath(TimelineLocators.Premiere_Image_Publier_Timeline)).getAttribute("outerHTML").contains("documentsmanagement/api/document-mgm/load-images"));

       codeImage=driver.findElement(By.xpath(TimelineLocators.Premiere_Image_Publier_Timeline)).getAttribute("outerHTML");

    }


    @Then("verifier que la notification existe et l'utilisateur peut afficher la publication image")
    public void verifierQueLaNotificationExisteEtLUtilisateurPeutAfficherLaPublicationImage() throws InterruptedException {

        driver.findElement(By.xpath(CommonLocators.Icone_Notifications)).click();
        action.pause(driver,1000);

        driver.findElement(By.xpath(CommonLocators.Premiere_Notification)).click();

        WebElement modules2 = (new WebDriverWait(driver, 50))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(TimelineLocators.Premiere_Image_Publier_Timeline)));

        String str2= driver.findElement(By.xpath(TimelineLocators.Premiere_Image_Publier_Timeline)).getAttribute("outerHTML");

        Assert.assertEquals(codeImage,str2);

    }



}
