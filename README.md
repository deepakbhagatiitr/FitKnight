# FitKnight - Fitness Community Platform

## Overview
FitKnight is a comprehensive fitness community platform that connects workout buddies and fitness groups. The application facilitates fitness enthusiasts in finding compatible workout partners and joining fitness groups based on shared interests, schedules, and locations.

## Features

### User Roles
1. **Workout Buddy**
   - Create and manage personal fitness profile
   - Set fitness goals and preferences
   - Specify workout availability
   - Connect with other workout buddies
   - Join fitness groups
   - Real-time chat with connections

2. **Group Organizer**
   - Create and manage fitness groups
   - Set group activities and schedules
   - Manage group members
   - View potential member suggestions
   - Communicate with group members

### Core Functionality

#### Authentication & Profile Management
- User registration with role selection
- Secure login/logout
- Profile customization
  - Profile picture upload
  - Personal information
  - Fitness goals
  - Workout preferences
  - Availability settings
  - Location settings

#### Workout Buddy Features
- Smart matching algorithm based on:
  - Location proximity
  - Schedule compatibility
  - Fitness interests
  - Workout preferences
- Match score calculation
- Recommended workout buddies list
- Detailed buddy profiles

#### Group Management
- Group creation with:
  - Group name
  - Activity type
  - Schedule
  - Description
  - Location
- Member management
  - Accept/reject join requests
  - Remove members
  - View member profiles
- Potential member suggestions based on:
  - Location matching
  - Schedule compatibility
  - Activity preferences

#### Communication
- Real-time chat functionality
  - Individual chats
  - Group chats
  - Message notifications
- Join request system
  - Send/receive group join requests
  - Accept/reject requests
  - Notification system

#### Search & Filtering
- Search workout buddies by:
  - Username
  - Location
  - Activity preferences
  - Availability
- Filter groups by:
  - Activity type
  - Location
  - Schedule

#### Notifications
- Real-time notifications for:
  - Chat messages
  - Join requests
  - Request responses
  - Group updates
- WebSocket connection for instant updates

### Technical Architecture

#### Frontend (Flutter)
- **State Management**: Provider pattern
- **Navigation**: Named routes
- **UI Components**:
  - Custom widgets for reusability
  - Material Design components
  - Responsive layouts
- **Asset Management**:
  - Image handling
  - Resource management

#### Backend Integration
- RESTful API communication
- WebSocket connections
- Token-based authentication
- Multipart form data handling
- Error handling and recovery

#### Data Management
- Secure token storage
- Shared preferences for user data
- File upload handling
- Cache management

### API Endpoints

#### Authentication
- POST `/api/login/` - User login
- POST `/api/register/` - User registration
- POST `/api/logout/` - User logout

#### Profile
- GET `/api/profile/` - Get user profile
- PUT `/api/profile/` - Update profile
- GET `/api/profile/?role=workout_buddy` - Get workout buddies
- GET `/api/profile/recommended-buddies/` - Get recommended buddies

#### Groups
- GET `/api/groups/` - List all groups
- POST `/api/groups/` - Create new group
- GET `/api/my-groups/` - List user's groups
- PUT `/api/groups/{id}/` - Update group
- DELETE `/api/groups/{id}/` - Delete group


#### Chat
- GET `/api/chat/rooms/` - List chat rooms
- POST `/api/chat/rooms/` - Create chat room
- GET `/api/chat/rooms/{id}/messages/` - Get room messages
- POST `/api/chat/rooms/{id}/messages/` - Send message


### Security Features
- Token-based authentication
- Secure password handling
- WebSocket authentication
- Input validation
- Error handling

### Error Handling
- Invalid input handling
- API error responses

## Installation

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / Xcode
- Git

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/deepakbhagatiitr/FitKnight.git
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

### Development Commands
```bash
# Get packages
flutter pub get

# Update packages
flutter pub upgrade

# Clean build
flutter clean

# Run the app in debug mode
flutter run

# Run the app in release mode
flutter run --release

# Build APK
flutter build apk
```


## Development Guidelines

### Code Structure
- `lib/`
  - `models/` - Data models
  - `screens/` - UI screens
  - `widgets/` - Reusable widgets
  - `services/` - API services
  - `providers/` - State management
  - `utils/` - Utilities
  - `components/` - Components

### Detailed Folder Structure
```
fitknight/
├── android/                   
├── ios/                     
├── lib/                        
│   ├── components/             
│   ├── models/                
│   ├── providers/              
│   ├── screens/                
│   ├── services/               
│   ├── utils/                  
│   └── widgets/              
├── test/                       
├── assets/                     
├── web/                        
├── pubspec.yaml                
├── pubspec.lock               
├── analysis_options.yaml      
├── .gitignore                  
└── README.md  
```

