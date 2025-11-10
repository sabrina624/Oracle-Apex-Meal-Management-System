# B1TEBYTE Meal Management System

This project is a complete **Meal Management System** designed for companies to manage and automate employee meal distribution, contributions, billing, budgeting, guest meals, and monthly expense settlements.

The system was built using:

- **Oracle Database (SQL)**
- **PL/SQL (Triggers, Sequences, Calculation Logic)**
- **Oracle APEX** (Frontend UI and Interactive Dashboards)
- **RESTful APIs (ORDS)** to integrate the meal system with external applications
- Used in multiple platforms like:
  - Postman (API Testing)
  - Nest.js / Node.js (Backend Integration)
  - Web Applications / Mobile Apps (Data Consumption via API)

---

## 📦 System Features

| Feature | Description |
|--------|-------------|
| Employee Meal Participation | Tracks lunch/dinner choices for each employee daily |
| Menu & Product Management | Define menu items and ingredient-wise costing |
| Real-Time Meal Cost Calculation | Automatically calculates daily meal cost per employee |
| Budget Allocation | Company + Employee share budgeting model |
| Daily & Monthly Summaries | Aggregates monthly totals and dues |
| Guest Meal Tracking | Includes extra guest cost with auto pricing |
| Monthly Bill Generation | Final employee bill summary for salary deduction |
| APEX Dashboards | Visual charts, interactive grids, and admin controls |
| REST API Support | APIs consumed from external applications |

---

## 🧱 Database Schema Structure

The system is structured around key database tables such as:

- `PHOENIX_DAILY_ATTENDANCE`
- `PHOENIX_MENU`, `PHOENIX_PRODUCT`, `PHOENIX_UOM`
- `PHOENIX_MENU_ITEM_MAP`
- `PHOENIX_DAILY_MEAL_ITEM`
- `PHOENIX_DAILY_BUDGET_TRACKER`
- `PHOENIX_MONTHLY_BUDGET`
- `PHOENIX_EMPLOYEE_BILL_SUMMARY`
- `PHOENIX_GUEST_MEAL_TRACKER`

Triggers and sequences ensure automatic ID generation and cost calculations.

All DB objects are included in `/db/schema` and `/db/plsql/triggers`.

---

## 🏗 ER Diagram & Flow

### Entity Relationship Diagram
```
docs/er/phoenix_meal_system_er.png
```

### System Flowchart
```
docs/flow/meal_budget_flow.png
```

---

## 🔧 REST API Integration

The system exposes Oracle APEX REST Data Services (ORDS) API modules for:

| API Purpose | Endpoint Type |
|------------|---------------|
| Fetch daily meal details | GET |
| Insert/update attendance | POST |
| Submit menu items & cost | POST |
| Fetch daily / monthly summaries | GET |
| Guest meal operations | POST / GET |

These APIs are tested using **Postman** and integrated into **Nest.js backend**.

---

## 🖥 APEX Frontend

UI is developed in Oracle APEX providing:

- Dashboard with charts and KPIs
- Manager panel for daily meal entry & monitoring
- Employee bill preview & approval
- Monthly report export (Excel / PDF)

---

## 🚀 Future Enhancement Plans

- Machine learning based **meal cost prediction**
- Dynamic ingredient price adjustment
- Nutrition-aware meal planning
- Mobile UI version

---

## 👨‍💻 Author

Developed with ❤️ as a real company project focusing on automation, optimization, and cost transparency.

