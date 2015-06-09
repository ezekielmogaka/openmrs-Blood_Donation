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
package org.openmrs.module.blooddonation.api.db;

import org.hibernate.SessionFactory;
import org.openmrs.Concept;
import org.openmrs.Encounter;
import org.openmrs.Patient;
import org.openmrs.module.blooddonation.api.blooddonationService;

import java.util.Date;
import java.util.List;

import org.openmrs.Order;
import org.openmrs.module.blooddonation.api.model.BloodDonation;
import org.openmrs.module.blooddonation.api.model.PreparedDonorId;
import org.openmrs.module.blooddonation.api.model.BloodbankForm;


/**
 *  Database methods for {@link blooddonationService}.
 */
public interface BloodDonationDAO {
	
	/*
	 * Add DAO methods here
	 */

	public void setSessionFactory(SessionFactory sessionFactory);

	public String getUniqueId();

	public void savePreparedId(PreparedDonorId pdi);

	public List<PreparedDonorId> getUnusedPreparedId();

	public PreparedDonorId getPrepDonorIdbyIdentifier(String identifier);

	public List<BloodDonation> getRecordsByPatient(Patient patient);

	public BloodDonation getRecordById(int id);

	public BloodDonation getRecordByTest(Encounter encounter);

	public void saveBloodBank(BloodDonation bloodDonation);

	public List<BloodDonation> getValidStockRecords();

	public List<BloodDonation> getTestableRecords();

	public List<BloodDonation> getValidStockByTypeConcept(Concept con);

	public List<PreparedDonorId> getAllPreparedIds();

	/**
	 * Get radiology form be concept name
	 *
	 * @param concept
	 * @return
	 */
	public List<BloodbankForm> getBloodbankForms(String conceptName);

	/**
	 * Get all radiology form
	 *
	 * @return
	 */
	public List<BloodbankForm> getAllBloodbankForms();

	/**
	 * Get radiology form by id
	 *
	 * @param id
	 * @return
	 */
	public BloodbankForm getBloodbankFormById(Integer id);

	/**
	 * Save radiology form
	 *
	 * @param form
	 * @return
	 */
	public BloodbankForm saveBloodbankForm(BloodbankForm form);

	public BloodDonation getRecordByResult(Encounter encounter);

	public List<Order> getOrders(Date date, String phrase);

	public boolean isPatientDonor(Integer patientId);

}

