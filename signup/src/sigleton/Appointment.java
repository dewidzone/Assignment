package com.mycompany.thejobs.sigleton;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Appointment {
    private String clientName;
    private LocalDateTime appointmentDateTime;
    private String location;
    private String description;

    public Appointment(String clientName, LocalDateTime appointmentDateTime, String location, String description) {
        this.clientName = clientName;
        this.appointmentDateTime = appointmentDateTime;
        this.location = location;
        this.description = description;
    }

    public String getClientName() {
        return clientName;
    }

    public LocalDateTime getAppointmentDateTime() {
        return appointmentDateTime;
    }

    public String getLocation() {
        return location;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        String formattedDateTime = appointmentDateTime.format(formatter);
        return "Appointment{" +
                "clientName='" + clientName + '\'' +
                ", appointmentDateTime=" + formattedDateTime +
                ", location='" + location + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}