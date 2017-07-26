package com.gokcan.springboot.ViewResolver;

/**
 * @author Skylifee7 on 25/07/2017.
 */

import com.gokcan.springboot.Model.User;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public class PDFView extends AbstractPDFView {
    @Override
    protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer, HttpServletRequest request, HttpServletResponse response) throws Exception {

        response.setHeader("Content-Disposition", "attachment; filename=\"users-report.pdf\"");

        List<User> users = (List<User>) model.get("users");
        document.add(new Paragraph("Generated Users " + LocalDate.now()));

        PdfPTable table = new PdfPTable(4);
        table.setWidthPercentage(100.0f);
        table.setSpacingBefore(10);
        SimpleDateFormat sdf = new SimpleDateFormat("d MMM yyyy");


        // define font for table header row
        Font font = FontFactory.getFont(FontFactory.TIMES);
        font.setColor(BaseColor.WHITE);

        // define table header cell
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(BaseColor.DARK_GRAY);
        cell.setPadding(5);

        // write table header
        cell.setPhrase(new Phrase("Username", font));
        table.addCell(cell);

        cell.setPhrase(new Phrase("Email", font));
        table.addCell(cell);

        cell.setPhrase(new Phrase("Birthday", font));
        table.addCell(cell);

        cell.setPhrase(new Phrase("Sex", font));
        table.addCell(cell);

        for (User user : users) {
            table.addCell(user.getUsername());
            table.addCell(user.getEmail());
            table.addCell(sdf.format(user.getDate()));

            String sex = "N/A";
            int byte_sex = Integer.parseInt(user.getSex());

            if (byte_sex == 1) {
                sex = "Male";
            } else if (byte_sex == 0) {
                sex = "Female";
            }

            table.addCell(sex);
        }

        document.add(table);
    }

}
