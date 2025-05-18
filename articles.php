<?php include "conn.php" ?>
<?php
// Get the part ID from the URL
$part_id = isset($_GET['part']) ? $_GET['part'] : 1;

// Define mapping of part IDs to source pages
$source_mapping = [
    1  => "parts",
    2  => "parts", 
    3  => "parts",
    4  => "parts",
    5  => "parts1",
    6  => "parts1",
    8  => "parts1",
    9  => "parts1",
    10 => "parts2",
    11 => "parts2",
    12 => "parts2",
    13 => "parts2",
    
];

// Get the source parameter from the URL or use the mapping if source is not specified
$source = isset($_GET['source']) ? $_GET['source'] : 
          (isset($source_mapping[$part_id]) ? $source_mapping[$part_id] : '');

// Define mapping of part IDs to actual table names
$table_mapping = [
    1  => "constitution_part1",
    2  => "constitution_part2",
    3  => "constitution_part3",
    4  => "constitution_part4",
    5  => "citizenship", 
    6  => "constitution_part6", 
    8  => "indianconstitution_part8",
    9  => "constitution_part9_relations",
    12 => "constitutionpart12",
    13 => "constitutionpart13",
    14 => "constitutionpart14",
    15 => "constitutionpart15",
    16 => "constitutionpart16",
    17 => "constitutionpart17",
    18 => "part18_emergency_provisions"
];

// Get the actual table name
$table_name = isset($table_mapping[$part_id]) ? $table_mapping[$part_id] : "constitutionarticles";

// First, let's determine what columns are actually in the table
$columns_query = "SHOW COLUMNS FROM $table_name";
$columns_result = $conn->query($columns_query);
$columns = [];

if ($columns_result && $columns_result->num_rows > 0) {
    while($column = $columns_result->fetch_assoc()) {
        $columns[] = $column['Field'];
    }
}

// Default column mappings
$id_column = in_array('SNo', $columns) ? 'SNo' : (in_array('id', $columns) ? 'id' : null);
$article_no_column = in_array('ArticleNo', $columns) ? 'ArticleNo' : (in_array('article_no', $columns) ? 'article_no' : null);
$definition_column = in_array('ArticleDefinition', $columns) ? 'ArticleDefinition' : (in_array('article_definition', $columns) ? 'article_definition' : null);
$description_column = in_array('ArticleDescription', $columns) ? 'ArticleDescription' : (in_array('article_description', $columns) ? 'article_description' : null);
$date_column = in_array('DateAdded', $columns) ? 'DateAdded' : (in_array('date_added', $columns) ? 'date_added' : null);

// Prepare the SQL query based on the table
$sql = "SELECT * FROM $table_name";

// Execute the query
$result = $conn->query($sql);

// Get part name based on part ID
$part_names = [
    1 => "Part I - The Union and its Territory",
    2 => "Part II - Citizenship",
    3 => "Part III - Fundamental Rights",
    4 => "Part IV - Directive Principles",
    5 => "Part V - The Union",
    6 => "Part VI - The States",
    8 => "Part VIII - The Union Territories",
    9 => "Part IX - The Panchayats",
    10 => "Part X - The Scheduled and Tribal Areas",
    11 => "Part XI - Relations between the Union and the States",
    12 => "Part XII - Finance, Property, Contracts and Suits",
    13 => "Part XIII - Trade and Commerce",
    14 => "Part XIV - Services Under the Union and States",
    15 => "Part XV - Elections",
    16 => "Part XVI - Special Provisions",
    17 => "Part XVII - Official Language",
    18 => "Part XVIII - Emergency Provisions"
];
$part_name = isset($part_names[$part_id]) ? $part_names[$part_id] : "Constitution Part";

// Determine which back button to show based on source parameter
$back_button_url = "index.html";
$back_button_text = "Home";

if ($source == 'parts') {
    $back_button_url = "parts.html";
    $back_button_text = "Parts 1 to 4";
} elseif ($source == 'parts1') {
    $back_button_url = "parts1.html";
    $back_button_text = "Parts 5 to 9";
} elseif ($source == 'parts2') {
    $back_button_url = "parts2.html";
    $back_button_text = "Parts 10 to 13";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($part_name); ?> - Articles</title>
    <style>
        body {
            background-image: url("articlebg.png");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            padding: 20px;
            margin: 0;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        
        .navigation {
            margin-bottom: 20px;
        }
        
        .back-btn {
            background-color: brown;
            position: fixed;  /* Keeps button always visible */ 
            color: white;
            padding: 8px 24px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            transition: transform 0.2s;
            font-size: 14px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-decoration: none;
            display: inline-block;
            position: fixed;
        }
        
        .back-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0,0,0,0.15);
        }
        
        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }
        
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }
        
        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        tr:hover {
            background-color: #f1f1f1;
        }
        
        .view-btn {
            background: linear-gradient(135deg, #8b9eff, #a78bfa);
            color: white;
            padding: 8px 24px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            transition: transform 0.2s;
            font-size: 14px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        .view-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0,0,0,0.15);
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
            z-index: 1000;
        }
        
        .modal-content {
            position: relative;
            background-color: #fefefe;
            margin: 4% auto;
            padding: 20px;
            border-radius: 10px;
            width: 70%;
            max-width: 700px;
            animation: modalopen 0.3s;
        }
        
        .close {
            position: absolute;
            right: 20px;
            top: 10px;
            font-size: 28px;
            font-weight: bold;
            color: #777;
            cursor: pointer;
        }
        
        .close:hover {
            color: #333;
        }
        
        @keyframes modalopen {
            from {transform: scale(0)}
            to {transform: scale(1)}
        }
        
        .modal-body {
            margin-top: 20px;
        }
        
        .modal-field {
            margin-bottom: 15px;
            padding: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .modal-field-label {
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }
        
        .modal-field-value {
            color: #666;
            margin-top: 5px;
            line-height: 1.4;
        }
        
        .no-data {
            padding: 40px;
            text-align: center;
            color: #888;
            font-size: 18px;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }
            
            .modal-content {
                width: 90%;
                margin: 10% auto;
            }
            
            table {
                font-size: 14px;
            }
            
            .view-btn {
                padding: 6px 16px;
                font-size: 12px;
            }
            
            th, td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
<div class="navigation">
            <!-- Only show one back button based on source parameter -->
            <a href="<?php echo htmlspecialchars($back_button_url); ?>" class="back-btn">← <?php echo htmlspecialchars($back_button_text); ?></a>
        </div>
    <div class="container">
        
        
        <h1><?php echo htmlspecialchars($part_name); ?></h1>
        
        <table>
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Article No</th>
                    <th>Article Definition</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result && $result->num_rows > 0) {
                    $sno=1;
                    while($row = $result->fetch_assoc()) {
                        // Safely get data with fallbacks
                        $id = isset($row[$id_column]) ? $row[$id_column] : '—';
                        $article_no = isset($row[$article_no_column]) ? $row[$article_no_column] : '—';
                        $definition = isset($row[$definition_column]) ? $row[$definition_column] : '—';
                        $description = isset($row[$description_column]) ? $row[$description_column] : '—';
                        $date = isset($row[$date_column]) ? $row[$date_column] : '—';
                        
                        echo '<tr>';
                        echo '<td>' . htmlspecialchars($sno) . '</td>';
                        echo '<td>' . htmlspecialchars($article_no) . '</td>';
                        echo '<td>' . htmlspecialchars($definition) . '</td>';
                        echo '<td><button class="view-btn" data-id="' . htmlspecialchars($id) . 
                             '" data-article-no="' . htmlspecialchars($article_no) . 
                             '" data-definition="' . htmlspecialchars($definition, ENT_QUOTES) . 
                             '" data-description="' . htmlspecialchars($description, ENT_QUOTES) . 
                             '" data-date="' . htmlspecialchars($date) . 
                             '" onclick="openModal(this)">View</button></td>';
                        echo '</tr>';
                        $sno+=1;
                    }
                } else {
                    echo '<tr><td colspan="4" class="no-data">No data found in the database for this part. Please check back later.</td></tr>';
                }
                $conn->close();
                ?>
            </tbody>
        </table>
    </div>

    <!-- Modal start -->
    <div id="articleModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Article Details</h2>
            <div class="modal-body">
                <div class="modal-field">
                    <div class="modal-field-label">S.No:</div>
                    <div id="modalArticleId" class="modal-field-value"></div>
                </div>
                <div class="modal-field">
                    <div class="modal-field-label">Article No:</div>
                    <div id="modalArticleNumber" class="modal-field-value"></div>
                </div>
                <div class="modal-field">
                    <div class="modal-field-label">Article Definition:</div>
                    <div id="modalDefinition" class="modal-field-value"></div>
                </div>
                <div class="modal-field">
                    <div class="modal-field-label">Article Description:</div>
                    <div id="modalDescription" class="modal-field-value"></div>
                </div>
                <div class="modal-field">
                    <div class="modal-field-label">Date Added:</div>
                    <div id="modalDate" class="modal-field-value"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal end -->

    <script>
        // Get modal element
        const modal = document.getElementById('articleModal');

        // Function to open modal and populate data
        function openModal(button) {
            // Get data from button attributes
            const id = button.getAttribute('data-id');
            const articleNo = button.getAttribute('data-article-no');
            const definition = button.getAttribute('data-definition');
            const description = button.getAttribute('data-description');
            const date = button.getAttribute('data-date');
            
            // Populate modal fields
            document.getElementById('modalArticleId').textContent = id;
            document.getElementById('modalArticleNumber').textContent = articleNo;
            document.getElementById('modalDefinition').textContent = definition;
            document.getElementById('modalDescription').textContent = description;
            document.getElementById('modalDate').textContent = date;
            
            // Display modal
            modal.style.display = "block";
        }

        // Function to close modal
        function closeModal() {
            modal.style.display = "none";
        }

        // Close modal when clicking outside
        window.onclick = function(event) {
            if (event.target == modal) {
                closeModal();
            }
        }

        // Close modal when pressing ESC key
        document.addEventListener('keydown', function(event) {
            if (event.key === "Escape") {
                closeModal();
            }
        });
    </script>
</body>
</html>