<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Information | Personal Details</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    
    <style>
        /* Custom CSS */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f5f5f5;
            color: #333;
        }

        .navbar {
            background-color: #003580;
            padding: 1rem 0;
        }

        .navbar-brand {
            color: white;
            font-weight: 600;
            font-size: 24px;
        }

        .main-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
        }

        .account-header {
            background-color: white;
            border-radius: 8px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .account-header h1 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .account-form {
            background-color: white;
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .form-label {
            font-weight: 500;
            color: #333;
            margin-bottom: 0.5rem;
        }

        .form-control {
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 0.75rem;
            margin-bottom: 1rem;
        }

        .form-control:focus {
            border-color: #003580;
            box-shadow: 0 0 0 0.2rem rgba(0,53,128,0.25);
        }

        .btn-primary {
            background-color: #003580;
            border-color: #003580;
            padding: 0.75rem 1.5rem;
            font-weight: 500;
        }

        .btn-primary:hover {
            background-color: #002855;
            border-color: #002855;
        }

        .btn-outline-secondary {
            color: #666;
            border-color: #ced4da;
            padding: 0.75rem 1.5rem;
            font-weight: 500;
        }

        .btn-outline-secondary:hover {
            background-color: #f8f9fa;
            color: #333;
        }

        .profile-section {
            text-align: center;
            margin-bottom: 2rem;
        }

        .profile-image {
            width: 120px;
            height: 120px;
            border-radius: 60px;
            object-fit: cover;
            margin-bottom: 1rem;
            border: 3px solid #003580;
        }

        .error-message {
            color: #dc3545;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }

        @media (max-width: 768px) {
            .account-header, .account-form {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="container">
            <a class="navbar-brand" href="#">Booking.com</a>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="main-container">
        <!-- Account Header -->
        <div class="account-header">
            <h1>Personal details</h1>
            <p class="text-muted">Update your personal information and manage your account</p>
        </div>

        <!-- Account Form -->
        <div class="account-form">
            <form id="personalDetailsForm" method="post" action="updatePersonalDetails">
                <!-- Profile Picture Section -->
                <div class="profile-section">
                    <img src="https://via.placeholder.com/120" alt="Profile Picture" class="profile-image" id="profilePreview">
                    <div class="mt-2">
                        <input type="file" class="form-control" id="profilePicture" accept="image/*" style="display: none;">
                        <button type="button" class="btn btn-outline-secondary" onclick="document.getElementById('profilePicture').click()">
                            Change Picture
                        </button>
                    </div>
                </div>

                <!-- Personal Information -->
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" required>
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">Phone number</label>
                    <input type="tel" class="form-control" id="phone" name="phone">
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="dateOfBirth" class="form-label">Date of birth</label>
                            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="gender" class="form-label">Gender</label>
                            <select class="form-control" id="gender" name="gender">
                                <option value="">Select gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <textarea class="form-control" id="address" name="address" rows="3"></textarea>
                </div>

                <!-- Form Actions -->
                <div class="d-flex justify-content-end gap-2 mt-4">
                    <button type="button" class="btn btn-outline-secondary">Cancel</button>
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.getElementById('personalDetailsForm');
            const profilePicture = document.getElementById('profilePicture');
            const profilePreview = document.getElementById('profilePreview');

            // Handle profile picture preview
            profilePicture.addEventListener('change', function(e) {
                const file = e.target.files[0];
                if (file) {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        profilePreview.src = e.target.result;
                    }
                    reader.readAsDataURL(file);
                }
            });

            // Form validation
            form.addEventListener('submit', function(e) {
                e.preventDefault();
                
                // Clear previous error messages
                document.querySelectorAll('.error-message').forEach(el => el.remove());
                
                let isValid = true;
                
                // Validate required fields
                const requiredFields = ['firstName', 'lastName', 'email'];
                requiredFields.forEach(field => {
                    const input = document.getElementById(field);
                    if (!input.value.trim()) {
                        showError(input, 'This field is required');
                        isValid = false;
                    }
                });

                // Validate email format
                const email = document.getElementById('email');
                if (email.value && !isValidEmail(email.value)) {
                    showError(email, 'Please enter a valid email address');
                    isValid = false;
                }

                // If form is valid, you can submit it
                if (isValid) {
                    // Uncomment the following line to submit the form
                    // form.submit();
                    console.log('Form is valid, ready to submit');
                }
            });

            // Helper functions
            function showError(input, message) {
                const error = document.createElement('div');
                error.className = 'error-message';
                error.textContent = message;
                input.parentNode.appendChild(error);
            }

            function isValidEmail(email) {
                return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
            }
        });
    </script>
</body>
</html>
