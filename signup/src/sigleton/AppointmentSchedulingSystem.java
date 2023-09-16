 
package com.mycompany.thejobs.sigleton;

import java.util.ArrayList;
import java.util.List;

public class AppointmentSchedulingSystem {
    private static AppointmentSchedulingSystem instance;
    private List<Appointment> appointments;

    private AppointmentSchedulingSystem() {
        // private constructor to prevent direct instantiation
        appointments = new ArrayList<>();
    }

    public static synchronized AppointmentSchedulingSystem getInstance() {
        if (instance == null) {
            instance = new AppointmentSchedulingSystem();
        }
        return instance;
    }

    public void addAppointment(Appointment appointment) {
        // Add the appointment to the list
        appointments.add(appointment);
    }

    public List<Appointment> getAppointments() {
        // Return the list of all appointments
        return appointments;
    }

    public void deleteAppointment(Appointment appointment) {
        // Remove the appointment from the list
        appointments.remove(appointment);
    }

    public static void main(String[] args) {
        // Example usage:
        AppointmentSchedulingSystem schedulingSystem = AppointmentSchedulingSystem.getInstance();

        // Create some appointments
        Appointment appointment1 = new Appointment("John Doe", "2023-09-10", "10:00 AM");
        Appointment appointment2 = new Appointment("Jane Smith", "2023-09-11", "02:30 PM");

        // Add appointments
        schedulingSystem.addAppointment(appointment1);
        schedulingSystem.addAppointment(appointment2);

        // Get all appointments
        List<Appointment> allAppointments = schedulingSystem.getAppointments();
        for (Appointment appointment : allAppointments) {
            System.out.println(appointment);
        }

        // Delete an appointment
        schedulingSystem.deleteAppointment(appointment1);

        // Get updated list of appointments
        List<Appointment> updatedAppointments = schedulingSystem.getAppointments();
        for (Appointment appointment : updatedAppointments) {
            System.out.println(appointment);
        }
    }
}

class Appointment {
    private String clientName;
    private String date;
    private String time;

    public Appointment(String clientName, String date, String time) {
        this.clientName = clientName;
        this.date = date;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "clientName='" + clientName + '\'' +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
