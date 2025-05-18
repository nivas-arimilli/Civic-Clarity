<?php
// Improved database connection with better error handling
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "trash";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Use prepared statement for better security
$sql = "SELECT * FROM citizenship ORDER BY ArticleNo ASC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizenship Articles Management</title>
    <style>
        body {
            background-color: #f4c7b8;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        
        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            padding: 15px;
            margin-bottom: 20px;
        }
        
        .btn {
            padding: 10px 20px;
            border: 2px solid #3366cc;
            border-radius: 15px;
            background-color: white;
            font-size: 16px;
            font-weight: bold;
            color: #3366cc;
            text-decoration: none;
            box-shadow: 0px 2px 5px rgba(0,0,0,0.2);
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .btn:hover {
            background-color: #e6f0ff;
            transform: translateY(-2px);
        }
        
        .table-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            overflow-x: auto;
        }
        
        table {
            width: 80%;
            max-width: 1000px;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        
        th, td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: left;
        }
        
        th {
            background-color: #3366cc;
            color: white;
            font-weight: bold;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        tr:hover {
            background-color: #f1f1f1;
        }
        
        .radio-cell {
            text-align: center;
            width: 40px;
        }
        
        input[type="radio"] {
            width: 20px;
            height: 20px;
            accent-color: #3366cc;
            cursor: pointer;
        }
        
        .action-cell {
            display: flex;
            gap: 5px;
        }
        
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.6);
            z-index: 1000;
            animation: fadeIn 0.3s;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        
        .modal-content {
            background-color: white;
            margin: 10% auto;
            padding: 25px;
            border: 1px solid #888;
            width: 50%;
            max-width: 500px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            animation: slideDown 0.4s;
        }
        
        @keyframes slideDown {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        
        .close {
            float: right;
            cursor: pointer;
            font-size: 28px;
            font-weight: bold;
            color: #aaa;
            transition: color 0.3s;
        }
        
        .close:hover {
            color: #333;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }
        
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s;
        }
        
        .form-group input:focus {
            border-color: #3366cc;
            outline: none;
            box-shadow: 0 0 5px rgba(51, 102, 204, 0.5);
        }
        
        .form-group input[readonly] {
            background-color: #f5f5f5;
            cursor: not-allowed;
        }
        
        .status-message {
            padding: 10px;
            border-radius: 4px;
            margin: 10px 0;
            text-align: center;
            display: none;
        }
        
        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        
        .error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        
        @media screen and (max-width: 768px) {
            table {
                width: 100%;
            }
            
            .modal-content {
                width: 90%;
                margin: 20% auto;
            }
            
            .btn {
                padding: 8px 12px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <h1>Citizenship Articles Management</h1>
    
    <div id="statusMessage" class="status-message"></div>
    
    <form id="articleForm" method="POST">
        <div class="button-container">
            <button type="button" onclick="handleAdd()" class="btn">Add New Article</button>
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th></th>
                        <th>S No</th>
                        <th>Article No</th>
                        <th>Article Definition</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    if ($result && $result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            $id = $row['SNo'];
                            ?>
                            <tr>
                                <td class="radio-cell">
                                    <input type="radio" name="sno"
                                            data-sno="<?php echo htmlspecialchars($id); ?>"
                                            data-articleno="<?php echo htmlspecialchars($row['ArticleNo']); ?>"
                                            data-definition="<?php echo htmlspecialchars($row['ArticleDefinition']); ?>">
                                </td>
                                <td><?php echo htmlspecialchars($id); ?></td>
                                <td><?php echo htmlspecialchars($row['ArticleNo']); ?></td>
                                <td><?php echo htmlspecialchars($row['ArticleDefinition']); ?></td>
                                <td class="action-cell">
                                    <button type="button" onclick="handleEditRow(<?php echo $id; ?>)" class="btn">Edit</button>
                                    <button type="button" onclick="handleDeleteRow(<?php echo $id; ?>)" class="btn">Delete</button>
                                </td>
                            </tr>
                            <?php 
                        }
                    } else {
                        echo '<tr><td colspan="5" style="text-align: center;">No articles found</td></tr>';
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </form>

    <!-- Edit Modal -->
    <div id="editModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('editModal')">&times;</span>
            <h2>Edit Article</h2>
            <form id="editForm">
                <div class="form-group">
                    <label for="sno">S No:</label>
                    <input type="text" id="sno" name="sno" readonly required>
                </div>
                <div class="form-group">
                    <label for="articleNo">Article No:</label>
                    <input type="text" id="articleNo" name="articleNo" required>
                </div>
                <div class="form-group">
                    <label for="articleDefinition">Article Definition:</label>
                    <input type="text" id="articleDefinition" name="articleDefinition" required>
                </div>
                <button type="submit" class="btn">Save Changes</button>
            </form>
        </div>
    </div>
    
    <!-- Delete Modal -->
    <div id="deleteModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('deleteModal')">&times;</span>
            <h2>Delete Article</h2>
            <p>Are you sure you want to delete this article? This action cannot be undone.</p>
            <form id="deleteForm">
                <div class="form-group">
                    <label for="delete_sno">S No:</label>
                    <input type="text" id="delete_sno" name="sno" readonly required>
                </div>
                <div class="form-group">
                    <label for="delete_articleNo">Article No:</label>
                    <input type="text" id="delete_articleNo" name="articleNo" readonly required>
                </div>
                <div class="form-group">
                    <label for="delete_articleDefinition">Article Definition:</label>
                    <input type="text" id="delete_articleDefinition" name="articleDefinition" readonly required>
                </div>
                <button type="submit" class="btn">Confirm Delete</button>
            </form>
        </div>
    </div>

    <!-- Add Modal -->
    <div id="addModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('addModal')">&times;</span>
            <h2>Add New Article</h2>
            <form id="addForm">
                <div class="form-group">
                    <label for="add_articleNo">Article No:</label>
                    <input type="text" id="add_articleNo" name="articleNo" required>
                </div>
                <div class="form-group">
                    <label for="add_articleDefinition">Article Definition:</label>
                    <input type="text" id="add_articleDefinition" name="articleDefinition" required>
                </div>
                <button type="submit" class="btn">Add Article</button>
            </form>
        </div>
    </div>

    <script>
        // Global function to show status messages
        function showStatus(message, isSuccess) {
            const statusEl = document.getElementById('statusMessage');
            statusEl.textContent = message;
            statusEl.className = 'status-message ' + (isSuccess ? 'success' : 'error');
            statusEl.style.display = 'block';
            
            // Hide after 3 seconds
            setTimeout(() => {
                statusEl.style.display = 'none';
            }, 3000);
        }
        
        // Global function to close any modal
        function closeModal(modalId) {
            document.getElementById(modalId).style.display = 'none';
        }
        
        // Get selected row data
        function getSelectedRowData() {
            const selectedArticle = document.querySelector('input[name="sno"]:checked');
            if (!selectedArticle) {
                return null;
            }
            
            return {
                sno: selectedArticle.dataset.sno,
                articleNo: selectedArticle.dataset.articleno,
                definition: selectedArticle.dataset.definition
            };
        }
        
        // Handle edit action
        function handleEdit() {
            const selectedData = getSelectedRowData();
            
            if (!selectedData) {
                showStatus('Please select an article to edit', false);
                return;
            }

            const modal = document.getElementById('editModal');
            const sno = document.getElementById('sno');
            const articleNo = document.getElementById('articleNo');
            const articleDefinition = document.getElementById('articleDefinition');

            sno.value = selectedData.sno;
            articleNo.value = selectedData.articleNo;
            articleDefinition.value = selectedData.definition;

            modal.style.display = 'block';
        }
        
        // Handle edit directly from row
        function handleEditRow(id) {
            const radio = document.querySelector(`input[data-sno="${id}"]`);
            if (radio) {
                radio.checked = true;
                handleEdit();
            }
        }
        
        // Handle delete action
        function handleDelete() {
            const selectedData = getSelectedRowData();
            
            if (!selectedData) {
                showStatus('Please select an article to delete', false);
                return;
            }

            const modal = document.getElementById('deleteModal');
            const sno = document.getElementById('delete_sno');
            const articleNo = document.getElementById('delete_articleNo');
            const articleDefinition = document.getElementById('delete_articleDefinition');
            
            sno.value = selectedData.sno;
            articleNo.value = selectedData.articleNo;
            articleDefinition.value = selectedData.definition;

            modal.style.display = 'block';
        }
        
        // Handle delete directly from row
        function handleDeleteRow(id) {
            const radio = document.querySelector(`input[data-sno="${id}"]`);
            if (radio) {
                radio.checked = true;
                handleDelete();
            }
        }
        
        // Handle add action
        function handleAdd() {
            // Clear previous inputs
            document.getElementById('add_articleNo').value = '';
            document.getElementById('add_articleDefinition').value = '';
            
            // Show modal
            document.getElementById('addModal').style.display = 'block';
        }

        // Edit form submission
        document.getElementById('editForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = new FormData(this);
            
            fetch('update.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showStatus('Article updated successfully!', true);
                    closeModal('editModal');
                    setTimeout(() => location.reload(), 1000);
                } else {
                    showStatus('Error updating article: ' + data.message, false);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showStatus('An error occurred while updating the article', false);
            });
        });

        // Delete form submission
        document.getElementById('deleteForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = new FormData(this);
            
            fetch('delete.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showStatus('Article deleted successfully!', true);
                    closeModal('deleteModal');
                    setTimeout(() => location.reload(), 1000);
                } else {
                    showStatus('Error deleting article: ' + data.message, false);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showStatus('An error occurred while deleting the article', false);
            });
        });

        // Add form submission
        document.getElementById('addForm').addEventListener('submit', function(e) {
            e.preventDefault();

            const formData = new FormData(this);
            
            fetch('new.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showStatus('Article added successfully!', true);
                    closeModal('addModal');
                    setTimeout(() => location.reload(), 1000);
                } else {
                    showStatus('Error inserting article: ' + data.message, false);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showStatus('An error occurred while inserting the article', false);
            });
        });
    </script>
</body>
</html>

<?php $conn->close(); ?>