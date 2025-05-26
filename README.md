# Agritech Market Match Platform

## Project Overview

The Agritech Market Match Platform aims to empower small-scale farmers by connecting them with market price information and potential buyers. This platform helps farmers decide where and when to sell their produce to maximize profits, bridging the information gap between farmers and markets.

---

## Features Implemented

- **Farmer Registration & Profile**  
  Farmers can be registered in the database with essential details like name, phone number, and location.

- **Produce Posting**  
  Farmers can post details about their crops including type, quantity, expected price, and location.

- **Market & Market Prices Database**  
  A curated list of markets from different locations with daily crop price updates.

- **Notification System (Alerts)**  
  Backend triggers automatically create alert entries when farmers post new produce, notifying them about relevant updates.

- **Real-time Notification Trigger**  
  A PostgreSQL trigger function is set up to insert alerts when new produce posts are created.

---

## Technology Stack

- **Backend & Database:** Supabase (PostgreSQL)
- **Authentication:** Supabase Auth (planned)
- **Frontend:** (To be implemented — React.js or Vanilla JS)
- **Notifications:** Backend alert system with plans to integrate SMS or web push notifications

---

## Data Schema Summary

| Table Name      | Key Columns                                      | Description                          |
|-----------------|-------------------------------------------------|------------------------------------|
| `farmers`       | `id`, `name`, `phone`, `location`               | Farmer profiles                    |
| `crops`         | `id`, `name`                                     | Crop types                        |
| `produce_posts` | `id`, `farmer_id`, `crop_id`, `quantity`, `expected_price`, `location`, `timestamp` | Crop postings by farmers          |
| `markets`       | `id`, `name`, `location`                         | Market locations                   |
| `market_prices` | `id`, `market_id`, `crop_id`, `price`, `date`   | Daily crop prices in markets      |
| `alerts`        | `id`, `farmer_id`, `message`, `sent_at`          | Notifications for farmers         |

---

## How to Use

1. **Database Setup:**  
   Use the provided SQL schema scripts to create tables and insert sample data for farmers, markets, crops, and market prices.

2. **Trigger for Notifications:**  
   The trigger function `notify_new_produce` automatically inserts an alert whenever a new produce post is added.

3. **Posting Produce:**  
   Insert produce posts into the `produce_posts` table linked to farmers and crops.

4. **Fetching Data:**  
   Query markets, market prices, farmers, and alerts using Supabase client SDK or direct SQL queries.


## Repository Structure

- `/sql/` — SQL scripts for schema creation, sample data insertion, and triggers
- `/backend/` — Supabase Edge functions and backend logic (planned)
- `/frontend/` — Frontend React or vanilla JS code (planned)

---

