package com.two.service;


import com.two.entity.Registration;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RegistrationService {
    public List<Registration> getRegistrationList();

    public boolean addReg(Registration registration);
    public Registration getRegistration(String regPatientName);

    public List<Registration> getDiagnosis(String regPatientName, String patientTel);

}
