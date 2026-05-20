#!/bin/bash
set -e

echo "🚀 Configurando FlyBy - Odyssey Voyage I..."

# Instalar Rover CLI
echo "📦 Instalando Rover CLI..."
curl -sSL https://rover.apollo.dev/nix/latest | sh
echo 'export PATH="$HOME/.rover/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.rover/bin:$PATH"

# Instalar dependencias de cada subgraph
echo "📦 Instalando dependencias de subgraph-locations..."
cd /workspaces/odyssey-voyage-I/subgraph-locations && npm install

echo "📦 Instalando dependencias de subgraph-reviews..."
cd /workspaces/odyssey-voyage-I/subgraph-reviews && npm install

echo "📦 Instalando dependencias del cliente..."
cd /workspaces/odyssey-voyage-I/client && npm install

echo ""
echo "✅ Todo listo! Para arrancar los servidores usa:"
echo "   Terminal 1: cd subgraph-locations && npm start"
echo "   Terminal 2: cd subgraph-reviews && npm start"
echo "   Terminal 3: cd router && npm start"
echo "   Terminal 4: cd client && npm start"