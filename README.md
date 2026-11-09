# Student Accommodation Management System

A relational database system designed for the Systems Development module. It models and automates student accommodation operations, including room allocations, amenities, booking statuses, and rent payment transactions.

## Features & Architecture
- **Student Management:** Stores personal profiles, contact details, and adresses.
- **Room & Facility Inventory:** Categorises room types (En-suite, Studio, Deluxe}, weekly rent rates, live occupancy status, and mapped room amenities.
- **Bookings & Financial Tracking:** Logs active, completed, and cancelled student bookings along with payment transaction methods (Card, Online, Cash).

## Tech Stack
- **Database Engine:** MySQL
- **Database Management Tool:** phpMyAdmin
- **Language:** SQL

## Project Structure
- 'database.sql' - Complete database dump containing schema definitions (`CREATE TABLE`) and sample dataset (`INSERT INTO`)
- `Systems Development -CW (1).pdf` - Full system design specification, ERDs, and normalisation report

## Database Schema & Entities
- `Students` (Student profiles and contact details)
- `rooms` & `room_types` (Room configurations, pricing, and availability)
- `facilities` & `room_facilities` (Amenity mappings per room)
- `bookings` (Student room allocations and date ranges)
- `Payments` (Financial ledger linked to booking IDs)
