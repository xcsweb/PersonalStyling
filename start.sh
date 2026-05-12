#!/bin/bash

# Simple script to start the Men's Styling Guide project
# This will serve the index.html file on port 8080

echo "🚀 Starting Men's Styling Guide..."
echo "📱 Open your browser and visit: http://localhost:8080"

# Try to use Python if available
if command -v python3 &> /dev/null; then
    echo "✅ Using Python 3"
    python3 -m http.server 8080
elif command -v python &> /dev/null; then
    echo "✅ Using Python"
    python -m SimpleHTTPServer 8080
else
    echo "❌ Python not found. Please install Python or use another web server."
    echo "💡 You can also directly open index.html in your browser."
fi
