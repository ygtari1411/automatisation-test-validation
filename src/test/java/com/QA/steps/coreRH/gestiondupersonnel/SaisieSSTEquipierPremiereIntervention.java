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

public class SaisieSSTEquipierPremiereIntervention {

    private static final Logger logger = Logger.getLogger(EtapesCommunes.class);
    private final WebDriver driver = GenerateurDriver.driver;

    @And("verifier que validation est bloquée et que le champs date de recyclage devient rouge")
    public void validationEstBloquéeEtQueLeChampsDateDeRecyclageDevientRouge() {
        logger.info("verifier que validation est bloquée et que le champs date de recyclage devient rouge");
        WebElement borderDateRecyclage =driver.findElement(By.xpath((GestionDuPersonnel.Border_Date_Recyclage_Equipier)));
        String borderColor=borderDateRecyclage.getCssValue("border");
        logger.info("Border color="+borderColor);
       Boolean verifCouleur=borderColor.contains("rgb(244, 67, 54)");
        Assert.assertTrue(verifCouleur);
    }


}
