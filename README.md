# Mail-writer-AI
📧 Gmail Auto-Reply Generator (AI-Powered)
This is a Spring Boot-based REST API that auto-generates email replies using Google's Gemini AI API. Designed for seamless integration with Gmail workflows, the application exposes a single endpoint to generate intelligent email responses. The entire app is Dockerized for easy deployment.

🔧 Features
✉️ Endpoint: POST /api/email/generate
Accepts an email prompt and returns an AI-generated reply.

🤖 AI Integration: Utilizes Gemini API for natural and context-aware email responses.

🐳 Dockerized: Easily build and run in a containerized environment.

🛠️ Tech Stack
Java 17

Spring Boot 3.x

Gemini API (via REST)

Docker

📥 API Usage
POST /api/email/generate
Request Body (JSON):

json
Copy
Edit
{
  "prompt": "Your original email content here"
}
Response:

text
Copy
Edit
"AI-generated email reply text"
🚀 Getting Started
Prerequisites
Docker installed

Gemini API Key

1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/VinayWinde/Mail-writer-AI.git
cd emailWriter
2. Build the Docker Image
bash
Copy
Edit
docker build -t gmail-ai-reply:1.0 .
3. Run the Container
bash
Copy
Edit
docker run -p 5643:5643 \
  -e GEMINI_URL="https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent" \
  -e GEMINI_KEY="confidential"\
  gmail-ai-reply:1.0
📎 Environment Variables

Variable	Description
GEMINI_URL	Gemini API endpoint URL
GEMINI_KEY	Your Gemini API Key
✅ Status
Basic functionality complete

Ready for deployment and integration

📬 License
MIT — feel free to use and modify.

