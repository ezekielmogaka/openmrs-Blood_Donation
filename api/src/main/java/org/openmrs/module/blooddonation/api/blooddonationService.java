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
package org.openmrs.module.blooddonation.api;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Concept;
import org.openmrs.Encounter;
import org.openmrs.Order;
import org.openmrs.Patient;
import org.openmrs.api.OpenmrsService;
import org.openmrs.module.blooddonation.api.model.BloodDonation;
import org.openmrs.module.blooddonation.api.model.BloodbankForm;
import org.openmrs.module.blooddonation.api.model.PreparedDonorId;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * This service exposes module's core functionality. It is a Spring managed bean which is configured in moduleApplicationContext.xml.
 * <p>
 * It can be accessed only via Context:<br>
 * <code>
 * Context.getService(blooddonationService.class).someMethod();
 * </code>
 * 
 * @see org.openmrs.api.context.Context
 */
@Transactional
public interface blooddonationService extends OpenmrsService {
     
	/*
	 * Add service methods here
	 * 
	 */

	String getUniqueId();

	void savePreparedId(PreparedDonorId pdi);

	PreparedDonorId getPrepDonorIdbyIdentifier(String identifier);

	List<PreparedDonorId> getUnusedPreparedId();

	List<BloodDonation> getRecordsByPatient(Patient patient);

	void saveBloodBank(BloodDonation bloodBank);

	List<BloodDonation> getValidStockRecords();

	List<BloodDonation> getTestableRecords();

	List<BloodDonation> getValidStockByTypeConcept(Concept con);

	BloodDonation getRecordById(int id);

	BloodDonation getRecordByTest(Encounter encounter);

	BloodDonation getRecordByResult(Encounter encounter);

	public List<Order> getOrders(Date date, String phrase);

	List<PreparedDonorId> getAllPreparedIds();

	/**
	 * Get all bloodbank forms
	 *
	 * @return
	 */
	public List<BloodbankForm> getAllBloodbankForms();

	/**
	 * Get bloodbank forms
	 *
	 * @param conceptName
	 * @return
	 */
	public List<BloodbankForm> getBloodbankForms(String conceptName);

	/**
	 * Get bloodbank test by id
	 *
	 * @param id
	 * @return
	 */
	public BloodbankForm getBloodbankFormById(Integer id);

	/**
	 * Get radiology test by id
	 *
	 * @param form
	 * @return
	 */
	public BloodbankForm saveBloodbankForm(BloodbankForm form);

	/**
	 * Given PatientId find if the patient has an existing encounter, is a donor or not.
	 */
	public boolean isPatientDonor(Integer PatientId);

}