package com.QA.steps.Talent.Recrutement;

import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WorkflowDemandeManagerValidee {

    private final WebDriver driver = GenerateurDriver.driver;

    @Then("le nom de l utilisateur {string} est affiche en haut a gauche")
    public void leNomDeLUtilisateurEstAfficheEnHautAGauche(String arg0) {

        boolean myDynamicElement = (new WebDriverWait(driver,60))
                .until(ExpectedConditions.attributeContains(By.xpath("/html/body/app-root/app-layout/div/section/div/acc-global-container/acc-portal-container/div/div/div[1]/acc-left-side-container/div/acc-user-widget/div/div[2]/span/span"),"innerText", "Yasushi TAKAGI"));
         
    }


}
