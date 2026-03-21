# AOSSIE Contributor Assistant

A minimal working MVP Discord bot for AOSSIE open-source org. It listens to a specific channel and replies using a local Ollama model.

## Features
- Listens only to a specific Discord channel
- Ignores other bots
- Fully async (uses `discord.py` and `httpx`)
- Shows typing indicator while thinking
- Uses a local Ollama LLM (no cloud dependencies)
- Loads context from a local skill file (e.g., `.clinerules`)
- Handles missing config and Ollama downtime gracefully

## Setup Instructions

1. **Prerequisites**
   - Python 3.8+
   - [Ollama](https://ollama.ai/) installed and running locally. We'll use the `llama3.2` model by default.
   - Run `ollama run llama3.2` to ensure the model is downloaded and ready.

2. **Clone and Install Dependencies**
   ```bash
   # Navigate to this directory
   cd aossie-bot
   
   # Optional but recommended: Create a virtual environment
   python -m venv venv
   # On Windows: venv\Scripts\activate
   # On Mac/Linux: source venv/bin/activate
   
   # Install requirements
   pip install -r requirements.txt
   ```

3. **Configuration**
   - Copy `.env.example` to `.env`:
     ```bash
     cp .env.example .env
     ```
   - Edit `.env` and fill in:
     - `DISCORD_TOKEN`: Your Discord bot token (from Discord Developer Portal). Remember to enable the "Message Content Intent".
     - `DISCORD_CHANNEL_ID`: The ID of the specific channel you want the bot to reply in.
     - `OLLAMA_MODEL`: Default is `llama3.2`.
     - `SKILL_FILE_PATH`: Path to a text file for context, default is `.clinerules`.

4. **Run the Bot**
   ```bash
   python bot.py
   ```
