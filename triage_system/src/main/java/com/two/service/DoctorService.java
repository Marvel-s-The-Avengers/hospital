package com.two.service;

import com.two.entity.Doctor;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface DoctorService {
    public List<Doctor> getDoctorList();
    public List<Doctor> getClinicDoc(String doctorBel);
}
