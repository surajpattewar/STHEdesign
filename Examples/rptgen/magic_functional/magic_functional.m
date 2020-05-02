%% Functional Report
% This example illustrates a functional approach to creating a report
% generator based on the DOM API. It uses the DOM API to create a MATLAB
% function, rptmagic, that generates a PDF, HTML, or a Microsoft Word
% report on a specified set of magic squares.
%
% *IMPORTANT!* Click the *Open Script* button on this page to use this
% example. This will download the example and its supporting files to
% your home directory.
%
%% Generate a Report
%
% 1. Open this example if it is not already open.
%
% 2. Generate an HTML, Word, or PDF report on four magic squares as follows: 
%
% * Click to generate an HTML report:
%
% <matlab:rptmagic([10,20,40,75],'html',true) rptmagic([10,20,40,75],'html',true)>
%
% * Click to generate a Word report:
%
% <matlab:rptmagic([10,20,40,75],'docx',true) rptmagic([10,20,40,75],'docx',true)>
%
% * Click to generate a PDF report:
%
% <matlab:rptmagic([10,20,40,75],'pdf',true) rptmagic([10,20,40,75],'pdf',true)>
%
%% Edit the Example's Word Templates
% This example uses two Microsoft Word templates to generate a Word
% report:
%
% * A main template that defines the format and fixed content of the
% reports title, table-of-contents, and introductory chapter.
%
% * A chapter template that defines the layout and fixed content of 
% the chapters containing magic squares. The magic square chapter template
% is stored in the Quick Parts gallery of the main template.
%
% You can edit these templates to change the appearance of a generated
% report:
%
% 1. Open this example if it is not already open.
% 
% 2. Click 
% <matlab:winopen('magic_squares_docx.dotx')
% winopen('magic_squares_docx.dotx')>
% to open the template in Word 
%
% 3. Edit the template(s) in Word.
%
% 4. Save the template(s).
% 
% 5. Click 
% <matlab:rptmagic([10,20,40,75],'docx',true) rptmagic([10,20,40,75],'docx',true)>
% to generate a report based on the modified template(s).
%
%% Edit the Example's HTML Templates
% This example uses two HTML templates to generate an HTML report:
%
% * A main template that defines the format and fixed content of the
% reports title, table-of-contents, and introductory chapter.
%
% * A chapter template that defines the layout and fixed content of 
% the chapters containing magic squares. The magic square chapter template
% resides in the main template's document part template library.
%
% To edit the templates:
%
% 1. Click <matlab:unzipTemplate('magic_squares_html.htmtx'); 
% unzipTemplate('magic_squares_html.htmtx')> to unzip the 
% template.
%
% 2. Click <matlab:edit('magic_squares_html/root.html')
% edit('magic_squares_html/root.html')> to open the template 
% root document in the MATLAB editor.
%
% 3. Click <matlab:edit('magic_squares_html/docpart_templates.html')
% edit('magic_squares_html/docpart_templates.html')> to open the document part 
% templates library document in the MATLAB editor.
%
% 4. Click <matlab:edit('magic_squares_html/stylesheets/root.css')
% edit('magic_squares_html/stylesheets/root.css')> to open the report
% style sheet in the MATLAB editor.
%
% 4. Edit the template's files in the MATLAB editor.
%
% 5. Save the templates files.
%
% 6. Click <matlab:zipTemplate('magic_squares_html.htmtx'); 
% zipTemplate('magic_squares_html.htmtx')> to rezip the template.
%
% 7. Click 
% <matlab:rptmagic([10,20,40,75],'html',true) rptmagic([10,20,40,75],'html',true)>
% to generate a report based on the modified template. 
%
%% Edit the Example's PDF Templates
% This example uses two PDF templates to generate a PDF report:
%
% * A main template that defines the format and fixed content of the
% reports title, table-of-contents, and introductory chapter.
%
% * A chapter template that defines the layout and fixed content of 
% the chapters containing magic squares. The magic square chapter template
% resides in the main template's document part template library.
%
% To edit the PDF templates:
%
% 1. Click <matlab:unzipTemplate('magic_squares_pdf.pdftx'); 
% unzipTemplate('magic_squares_pdf.pdftx')> to unzip the 
% template.
%
% 2. Click <matlab:edit('magic_squares_pdf/root.html')
% edit('magic_squares_pdf/root.html')> to open the template 
% root document in the MATLAB editor.
%
% 3. Click <matlab:edit('magic_squares_pdf/docpart_templates.html')
% edit('magic_squares_pdf/docpart_templates.html')> to open the report
% style sheet in the MATLAB editor.
%
% 4. Click <matlab:edit('magic_squares_pdf/stylesheets/root.css')
% edit('magic_squares_pdf/stylesheets/root.css')> to open the document part 
% templates library document in the MATLAB editor.
%
% 5. Edit the template files in the MATLAB editor.
%
% 6. Save the files.
%
% 7. Click <matlab:zipTemplate('magic_squares_pdf.pdftx'); 
% zipTemplate('magic_squares_pdf.pdftx')> to rezip the template.
%
% 8. Click 
% <matlab:rptmagic([10,20,40,75],'pdf',true) rptmagic([10,20,40,75],'pdf',true)>
% to generate a report based on the modified template. 
%
%% Edit the Example Code
% 1. Open this example if it is not already open.
%
% 2. Click <matlab:edit('rptmagic.m') edit('rptmagic.m')> to open  
% rptmagic.m in the MATLAB editor.
%
% 3. Edit rptmagic.m.
%
% 4. Save rptmagic.m.
%
% 6. Rerun rptmagic.m to see the results of your changes.

