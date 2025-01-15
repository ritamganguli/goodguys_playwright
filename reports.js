const fs = require('fs');
const path = require('path');

//const stepNumber = process.env.HYPERTEST_STEP; // Ensure stepNumber is set as an environment variable or use a hardcoded value
const stepNumber = process.env._taskId + '_' +process.env.HYPERTEST_STEP ;
// Directories and source file paths for all reports
const sourceDirs = [  
	{ dir: 'reports', jsonFile: 'report.json', htmlFile: 'cucumber-html-report.html' },  
	//{ dir: 'target/surefire-reports/junitreports', xmlFile: 'TEST-com.qea.racv.runner.TestNgRunner.xml' }
    ];
	
// Ensure stepNumber is valid
if (!stepNumber) {  
	console.error("Error: stepNumber is not defined.");  
	process.exit(1);}
	
// Function to move and rename files
const moveAndRenameFile = (source, target) => {  
	fs.rename(source, target, (err) => {    
		if (err) {      
			console.error(`Error moving file from ${source} to ${target}:`, err);    
		} else {      
			console.log(`Successfully moved file: ${source} -> ${target}`);    
		} 
	 });
 };
 // Iterate through both directories and handle renaming
 sourceDirs.forEach(({ dir, jsonFile, htmlFile, xmlFile }) => {  
	if (jsonFile && htmlFile) {    
		const jsonSource = path.join(dir, jsonFile);    
		const htmlSource = path.join(dir, htmlFile);    
		
		const jsonTarget = path.join(dir, `${jsonFile.replace('.json', '')}_${stepNumber}.json`);    
		const htmlTarget = path.join(dir, `${htmlFile.replace('.html', '')}_${stepNumber}.html`);    
		// Check if files exist and move them    
		if (fs.existsSync(jsonSource)) {      
			moveAndRenameFile(jsonSource, jsonTarget);    
		} else {      
			console.error(`Error: ${jsonSource} does not exist.`);    
		}   
		 if (fs.existsSync(htmlSource)) {      
			moveAndRenameFile(htmlSource, htmlTarget);    
		} else {      
			console.error(`Error: ${htmlSource} does not exist.`);    
		}  
	}  
}); 






