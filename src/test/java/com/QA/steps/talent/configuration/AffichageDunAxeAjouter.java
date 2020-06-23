package com.QA.steps.talent.configuration;

import com.QA.locators.ConfigurationTalentLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class AffichageDunAxeAjouter {

    private static final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();


    @When("l utilisateur clique sur Afficher_option_conf_Axe du dernier axe ajouter")
    public void lUtilisateurCliqueSurAfficher_option_conf_AxeDuDernierAxeAjouter() throws InterruptedException {

        //Récuper l'indice du dernier élément



        List<WebElement> list = driver.findElements(By.xpath(ConfigurationTalentLocators.Liste_Axe_Talent));
        int indice =list.size();




    }



}
