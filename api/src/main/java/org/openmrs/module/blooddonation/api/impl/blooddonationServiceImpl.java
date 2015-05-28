/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.blooddonation.api.impl;

import org.openmrs.Concept;
import org.openmrs.Encounter;
import org.openmrs.Order;
import org.openmrs.Patient;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.blooddonation.api.blooddonationService;
import org.openmrs.module.blooddonation.api.db.BloodDonationDAO;
import org.openmrs.module.blooddonation.api.model.BloodDonation;
import org.openmrs.module.blooddonation.api.model.BloodbankForm;
import org.openmrs.module.blooddonation.api.model.PreparedDonorId;

import java.util.Date;
import java.util.List;

/**
 * It is a default implementation of {@link blooddonationService}.
 */
public class blooddonationServiceImpl extends BaseOpenmrsService implements blooddonationService {

    private final Log log = LogFactory.getLog(getClass());
    private BloodDonationDAO dao;

    public void setDao(BloodDonationDAO dao) {
        this.dao = dao;
    }

    public String getUniqueId() {
        return getDao().getUniqueId();
    }

    public void savePreparedId(PreparedDonorId pdi) {
        getDao().savePreparedId(pdi);
    }

    public PreparedDonorId getPrepDonorIdbyIdentifier(String identifier) {
        return getDao().getPrepDonorIdbyIdentifier(identifier);
    }

    public List<PreparedDonorId> getAllPreparedIds(){
        return getDao().getAllPreparedIds();
    }

    public List<PreparedDonorId> getUnusedPreparedId() {
        return getDao().getUnusedPreparedId();
    }

    public List<BloodDonation> getRecordsByPatient(Patient patient) {
        return getDao().getRecordsByPatient(patient);
    }

    public void saveBloodBank(BloodDonation bloodBank) {
        getDao().saveBloodBank(bloodBank);
    }

    public List<BloodDonation> getValidStockRecords() {
        return getDao().getValidStockRecords();
    }

    public List<BloodDonation> getTestableRecords() {
        return getDao().getTestableRecords();
    }

    public List<BloodDonation> getValidStockByTypeConcept(Concept con) {
        return getDao().getValidStockByTypeConcept(con);
    }

    public BloodDonation getRecordById(int id) {
        return getDao().getRecordById(id);
    }

    public BloodDonation getRecordByTest(Encounter encounter){
        return getDao().getRecordByTest(encounter);
    }


    public BloodDonationDAO getDao() {
        return dao;
    }

    public List<BloodbankForm> getAllBloodbankForms() {
        return dao.getAllBloodbankForms();
    }

    public List<BloodbankForm> getBloodbankForms(String conceptName) {
        return dao.getBloodbankForms(conceptName);
    }

    public BloodbankForm getBloodbankFormById(Integer id) {
        return dao.getBloodbankFormById(id);
    }

    public BloodbankForm saveBloodbankForm(BloodbankForm form) {
        return dao.saveBloodbankForm(form);
    }

    public BloodDonation getRecordByResult(Encounter encounter) {
        return dao.getRecordByResult(encounter);
    }

    public List<Order> getOrders(Date date, String phrase) {
        System.out.println("Orders created");
        return dao.getOrders(date, phrase);

    }

    public boolean isPatientDonor(Integer PatientId) {
        System.out.println("Reached ServiceImpl");
        return dao.isPatientDonor(PatientId);
    }
}