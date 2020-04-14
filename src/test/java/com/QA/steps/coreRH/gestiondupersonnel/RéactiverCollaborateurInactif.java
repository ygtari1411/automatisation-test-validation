package com.QA.steps.coreRH.gestiondupersonnel;

import com.QA.locators.GestionDuPersonnel;
import com.QA.steps.EtapesCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class RéactiverCollaborateurInactif {

    private static final Logger logger = Logger.getLogger(EtapesCommunes.class);
    private final WebDriver driver = GenerateurDriver.driver;

    @And("vérifier que l'utilisateur est actif")
    public void vérifierQueLUtilisateurEstActif() {
        logger.info("Vérifier que le collaborateur est Actif");
        WebElement statusCollaborateur=driver.findElement(By.xpath(GestionDuPersonnel.Status_Collaborateur));

        Boolean verifStatutActif = (new WebDriverWait(driver, 20))
                .until(ExpectedConditions.textToBePresentInElement(statusCollaborateur,"Actif"));

        Assert.assertTrue(verifStatutActif);
    }


}
