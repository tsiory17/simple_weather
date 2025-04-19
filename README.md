# 4CAST - Weather App 🌦️  
> **Navigate this Document**

- [Project Overview](#project-overview)
- [Why This App Matters](#why-this-app-matters)
- [Key Features](#key-features)
- [Tech Stack](#tech-stack)
- [AI-Powered Suggestions (Gemini API Integration)](#ai-powered-suggestions-gemini-api-integration)
- [How To Run The Application](#how-to-run-the-application)
- [User Interface Overview](#user-interface-overview)
- [Architecture Diagram](#architecture-diagram)
- [Models Diagram](#models-diagram)
- [Developers](#developers)


## Project Overview
4Cast is an accurate and user-friendly **weather application** that:
- Retrieves the **user’s current location**
- Displays **real-time weather data**
- Shows a **5-day forecast**
- Displays **air quality index (AQI)**
- Suggests **meals and activities** based on the weather using AI

##  Why This App Matters
- Everyone needs weather info daily for decisions (clothing, travel, health).
- Includes personalized location-based updates.
- Enhances user awareness with AQI monitoring.
- Helps users decide on food and activities using real-time weather + AI

## Key Features
- Get current weather (temperature, humidity, conditions).
- Get 5-day forecast with daily breakdown.
- Display Air Quality Index (AQI).
- Location access.
- SwiftUI animations and clean design.
- **AI-powered food suggestions** based on current weather.
- **AI-powered activity suggestions** tailored to weather conditions.
  
---

## Tech Stack

| Layer          | Technology Used            |
|----------------|----------------------------|
| **Frontend**   | Swift                      |
| **Backend**    | SwiftUI                    |
| **Weather API**| OpenWeatherMap             |
| **AI API**     | Google Gemini (Generative AI) |

---

## AI-Powered Suggestions (Gemini API Integration)

**Google's Gemini API** helps enhance user experience with smart suggestions powered by generative AI. Suggestions are based real-time weather conditions:

### Food Suggestions
- Suggests meals or drinks ideal for the current weather.
- Includes short explanations and real-world restaurant links as examples.
- Automatically generates suggestions using weather parameters like temperature, humidity, wind speed, and condition (e.g., “clear sky”).

### Activity Suggestions
- Recommends weather-appropriate activities.
- Includes visual descriptions.
- Dynamically adapts based on your local weather info.

These features use:
- `gemini-2.0-flash` for food suggestions.
- `gemini-2.5-pro-exp-03-25` for activity suggestions.

## How To Run The Application:
**Step 1 : Code Editor**<br>
- Install XCode version 16 or later (on a Mac)
- Launch **Xcode**.
- Open your `.xcodeproj` file.

**Step 2 : Install Packages**
1. In Xcode, go to File > Add Packages.
2. Enter the URL in the search bar. 
3. Choose the latest version and click Add Package.  <br><br>
***URL to be searched in the search bar:***
- `https://github.com/gonzalezreal/swift-markdown-ui.git` for Markdown response by AI
- `https://github.com/google/generative-ai-swift` for Gemini API
- `https://github.com/SDWebImage/SDWebImageSwiftUI`

**Step 3 : Run the simulator**
- At the top of Xcode, locate the **device selector** next to the build and run buttons (a triangle ▶️).
- Click it and choose a device (e.g., **iPhone 16**, **iPhone SE**, etc.) from the list under **Simulators**.
- Press `Cmd + R` or click the **Run** button (▶️) in the toolbar.
- This will launch the **iOS Simulator** and install + run your app on the selected device.

 *The simulator might take a few seconds to start, especially the first time.
 Your app will automatically launch once the build is successful.*

  
  
## User Interface Overview

### Welcome Screen
- Title and “Share Location” button.
> ![firstPage](https://github.com/user-attachments/assets/04f9df28-1cc5-4bc5-a527-2f16da0ef4a2)

### Main Screen
- City Name, Weather Icon, Temperature, Description.
> ![CurrentWeaher](https://github.com/user-attachments/assets/fb9c2ff7-0a8a-430f-876f-4532276380fe)

- Forecast cards (horizontally scrollable).
> ![ForecastView](https://github.com/user-attachments/assets/9d12663d-3517-453e-a548-16c8bb94365c)

- Air Quality section.
> ![AirQuality](https://github.com/user-attachments/assets/eacaceee-8282-43a6-969a-779853da9df6)

- Dynamic styling based on the weather of the day.
  - Snowy
  >![SnowyBackground](https://github.com/user-attachments/assets/8e111442-ac6b-4a1e-99bf-1042b46de358)
  - Rainy
  >![RainyBackground](https://github.com/user-attachments/assets/2d7171f2-d90f-4520-b20b-c7adc41bd701)
  - Hazy
  >![HazyBackground](https://github.com/user-attachments/assets/5795d86a-27c7-42b9-b556-3ddaeb817d28)
  - Cloudy
  >![CloudyBackground](https://github.com/user-attachments/assets/004b4bf5-38cd-4145-b1d1-bb633b053235)
  - Clear
  >![ClearBackground](https://github.com/user-attachments/assets/175d3b33-79ea-47f6-95ae-4dc6d706f597)
  - Thunderstorm
  >![ThunderstormBackground](https://github.com/user-attachments/assets/75ec0582-2185-44c5-84b2-bdc502a8fd3c)
  - Default
  >![DefaultBackground](https://github.com/user-attachments/assets/2c93549c-94c6-433e-8627-c721fbc5385c)

### Searching city
>![MainPageSearchingCity](https://github.com/user-attachments/assets/6344fe73-afc3-4bd2-9b6f-00419ec57785)
>![SearchingCity](https://github.com/user-attachments/assets/13a3133c-4270-4444-a710-1e0481ed0e49)

### Activity suggestion 
>![ActivitySuggestion](https://github.com/user-attachments/assets/2eb08024-de3a-4e28-9e24-85ef0cec9bb2)

### Food suggestion 
>![FoodSuggestion](https://github.com/user-attachments/assets/412de197-f7dc-45b9-ba38-9d01ab7698ac)

---

## Architecture Diagram
![weatherapp drawio](https://github.com/user-attachments/assets/4c687f2c-e73a-4620-bd89-0a504bfafa9c)

## Models Diagram
![modelweather drawio](https://github.com/user-attachments/assets/aeb1e45e-94e7-481e-8ca7-af4859ed2f46)


## Developers 
- **Tsiory Rakotoarimanana**  
- **Thiago Padilha De Holanda Neto**
- **Jhalil Danilo Roman Soria**  
 


