package com.two.service;

import com.two.entity.Patient;
import org.apache.ibatis.annotations.Param;

public interface PatientService {
    public boolean add(Patient patient);
    public Patient getRegistration(String patientName);
}
