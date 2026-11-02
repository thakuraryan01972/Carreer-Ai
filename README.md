# CareerAI: Personalized Career Recommendation & Student Performance Analysis System

CareerAI is an intelligent full-stack web application designed for students. It combines **Machine Learning**, **Data Analytics**, **Natural Language Processing**, **FastAPI**, **SQLite**, and **React** to predict academic performance, recommend suitable career paths, analyze skill gaps, generate personalized roadmaps, and provide an AI chatbot assistant.

---

## 🌟 Key Features

1. **User Authentication**: Secure user registration, password hashing (Bcrypt/SHA-256), and JWT authentication.
2. **Student Profile Management**: Multi-field profile tracking academic marks, attendance, study hours, assignments, technical skill proficiencies (Python, SQL, ML, DL, Web, Cloud, Cybersecurity), and target career goals.
3. **ML Student Performance Prediction**: Supervised Machine Learning pipeline comparing **Random Forest**, **Gradient Boosting**, and **Neural Networks (MLP)**. Predicts expected academic score (%) and performance category (*Poor*, *Average*, *Good*, *Excellent*).
4. **Career Recommendation Engine**: Vector similarity scoring across 10 industry career paths with suitability percentages, matching skills, missing skills, and detailed explanations.
5. **Skill Gap Analysis**: Visual progress bars and deficit matrices comparing student skills against target career prerequisites.
6. **Personalized Learning Roadmap**: Interactive 5-phase step-by-step curriculum with recommended projects and task completion toggles.
7. **AI Career Assistant Chatbot**: Context-aware NLP chatbot analyzing live student profile metrics to deliver personalized guidance.
8. **Analytics Dashboard**: Comprehensive demonstration of 4 Data Analytics types:
   - **Descriptive Analytics**: Baseline student marks, attendance, study hours, and skill radar.
   - **Diagnostic Analytics**: Root causes for performance bottlenecks and weak subject identification.
   - **Predictive Analytics**: ML expected score & performance category.
   - **Prescriptive Analytics**: Recommended action plan, skill improvements, and career roadmap progress.

---

## 🛠️ Technology Stack

- **Frontend**: React.js 18, Vite, Lucide React, CSS Grid/Flexbox UI
- **Backend**: Python 3.11, FastAPI, SQLAlchemy ORM, SQLite
- **Machine Learning**: Scikit-Learn, Pandas, NumPy, Joblib
- **Authentication**: JWT Tokens, Password Hashing

---

## 📁 Project Structure

```
CareerAI/
├── backend/
│   ├── main.py                  # FastAPI Application Entry
│   ├── database/
│   │   ├── connection.py        # SQLite Engine & Session
│   │   └── models.py            # SQLAlchemy Database Schema
│   ├── schemas/                 # Pydantic Request/Response Models
│   ├── routes/                  # REST API Endpoints (Auth, Profile, ML, Career, Chat, Dashboard)
│   ├── services/                # Business Logic (Auth, Career Engine, Roadmap, Chatbot)
│   └── ml/
│       ├── train.py             # ML Training & Model Evaluation Pipeline
│       └── predictor.py         # Inference Engine
├── dataset/
│   ├── generate_dataset.py      # Synthetic Data Generator (1,000 Records)
│   └── student_performance_data.csv
├── trained_models/
│   ├── performance_regressor.joblib
│   ├── performance_classifier.joblib
│   ├── performance_scaler.joblib
│   └── model_metrics.json
├── frontend/
│   ├── src/                     # React Components, Pages, Context & API Service
│   ├── package.json
│   └── vite.config.js
├── requirements.txt
├── .env.example
└── README.md
```

---

## 🚀 How to Run locally

### 1. Backend Setup & Run

Open PowerShell / Terminal in the project root:

```powershell
# Navigate to project
cd C:\Users\Admin\Desktop\CareerAI

# Run FastAPI Backend Server
python -m uvicorn backend.main:app --reload --port 8000
```
- Interactive API Documentation: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

### 2. (Optional) Re-run ML Training

If you want to re-train the Machine Learning models:

```powershell
python dataset/generate_dataset.py
python backend/ml/train.py
```

### 3. Frontend Setup & Run

Open a second PowerShell / Terminal:

```powershell
# Navigate to frontend
cd C:\Users\Admin\Desktop\CareerAI\frontend

# Start Vite Development Server
cmd /c npm run dev
```
- Open browser at: [http://localhost:5173](http://localhost:5173)

---

## 📊 Model Evaluation Metrics

- **Regression (Score Prediction)**: R² Score ~0.79+, MAE ~2.8, RMSE ~3.5
- **Classification (Category)**: Accuracy ~79.5%, Precision ~80.1%, F1-Score ~79.3%
