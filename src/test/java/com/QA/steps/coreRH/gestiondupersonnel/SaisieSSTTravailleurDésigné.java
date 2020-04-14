package com.QA.steps.coreRH.gestiondupersonnel;

import com.QA.locators.GestionDuPersonnel;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.EtapesCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class SaisieSSTTravailleurDésigné {

    private static final Logger logger = Logger.getLogger(EtapesCommunes.class);
    private final WebDriver driver = GenerateurDriver.driver;
    public static List<String> listededonnees=EtapesCommunes.listededonnees;



    @And("l utilisateur saisit une date d'obtention inférieure a la date de naissance")
    public void lUtilisateurSaisitUneDateDObtentionSupérieureALaDateDeNaissance() throws ParseException {
        logger.info("l utilisateur saisit une date d'obtention inférieure a la date de naissance");
        String dateNaissanceString=ActionsCommunes.DataProvider("Date Naissance");
       logger.info("date naissance "+dateNaissanceString);
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date dateNaissance=formatter.parse(dateNaissanceString);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateNaissance);
        calendar.add(Calendar.YEAR, -7);
        Date dateObtention=calendar.getTime();
        String dateObtentionFormatée=formatter.format(dateObtention);
        driver.findElement(By.xpath(GestionDuPersonnel.Date_Obtention)).sendKeys(dateObtentionFormatée);
    }

    @And("extraire la date de naissance du collaborateur")
    public void extraireLaDateDeNaissanceDuCollaborateur() {
        WebElement dateNaissance=driver.findElement(By.xpath(GestionDuPersonnel.Date_De_Naissance));
        listededonnees.add("Date Naissance");
        listededonnees.add(dateNaissance.getAttribute("value"));
    }


}
