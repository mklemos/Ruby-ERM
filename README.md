
# Helix Home

Helix Home is a web application built with a React frontend and a Rails backend. The application allows users to manage products and accounts, featuring CSRF protection and a modern development workflow.

## Features

- Product Management: Create, read, update, and delete products.
- Account Management: Create, read, update, and delete accounts.
- CSRF Protection: Secure application with CSRF tokens.

## Prerequisites

- Node.js
- Yarn or npm
- Ruby
- Rails
- PostgreSQL (or your preferred database)

## Getting Started

### Backend Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/mklemos/Ruby-ERM-test.git
   cd Ruby-ERM-test/helix-home-backend
   ```

2. **Install dependencies:**

   ```sh
   bundle install
   ```

3. **Set up the database:**

   ```sh
   rails db:create
   rails db:migrate
   ```

4. **Run the Rails server:**

   ```sh
   rails server
   ```

### Frontend Setup

1. **Navigate to the frontend directory:**

   ```sh
   cd ../helix-home-frontend
   ```

2. **Install dependencies:**

   ```sh
   yarn install
   # or
   npm install
   ```

3. **Start the React development server:**

   ```sh
   yarn start
   # or
   npm start
   ```

## Project Structure

```
helix-home/
├── helix-home-backend/   # Rails backend
│   ├── app/
│   ├── config/
│   ├── db/
│   └── ...
├── helix-home-frontend/  # React frontend
│   ├── public/
│   ├── src/
│   │   ├── components/
│   │   ├── axiosConfig.js
│   │   └── ...
│   └── ...
```

## API Endpoints

### Products

- `GET /products` - Retrieve all products
- `GET /products/:id` - Retrieve a specific product
- `POST /products` - Create a new product
- `PUT /products/:id` - Update a product
- `DELETE /products/:id` - Delete a product

### Accounts

- `GET /accounts` - Retrieve all accounts
- `GET /accounts/:id` - Retrieve a specific account
- `POST /accounts` - Create a new account
- `PUT /accounts/:id` - Update an account
- `DELETE /accounts/:id` - Delete an account

## CSRF Protection

The application includes CSRF protection by setting a CSRF token in the cookies and including it in each request's headers. This ensures that only legitimate requests from authenticated users are processed by the server.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License.
