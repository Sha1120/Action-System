package lk.jiat.action.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.jiat.action.bean.Auction;
import lk.jiat.action.bean.AuctionBid;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

@WebServlet("/PlaceBidServlet")
public class PlaceBidServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int auctionId = Integer.parseInt(request.getParameter("auctionId"));
        double bidAmount = Double.parseDouble(request.getParameter("bidAmount"));

        String bidderName = request.getParameter("bidderName");
        // AuctionService is your logic/controller class
        Auction auction = AuctionService.getAuctionById(auctionId);

        if (auction != null ) {
            // Check if auction has ended
            if (!auction.getTimeRemaining().equals("Auction ended")) {
                if (bidAmount > auction.getCurrentBid()) {
                    auction.setCurrentBid(bidAmount);

                    // Create bid history record
                    AuctionBid newBid = new AuctionBid(
                            bidderName,
                            bidAmount,
                            new Timestamp(System.currentTimeMillis())
                    );


                    // Add to in-memory bid history list
                    auction.addBidToHistory(newBid);

                    // Optional: You might also store bidder info, timestamp etc.
                    AuctionService.updateAuction(auction); // method to update auction in your DB/list

                    // Store success bid info in session
                    HttpSession session = request.getSession();
                    session.setAttribute("lastBidAmount", bidAmount);
                    session.setAttribute("lastBidAuctionTitle", auction.getTitle());
                }
            }
        }

        List<Auction> auctions = AuctionService.getAllAuctions();

        // Redirect back to the auction detail page
        request.setAttribute("auction", auction);
        request.getRequestDispatcher("auction-detail.jsp").forward(request, response);

    }
}

