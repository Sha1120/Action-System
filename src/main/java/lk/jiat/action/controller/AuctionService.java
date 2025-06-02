package lk.jiat.action.controller;

import lk.jiat.action.bean.Auction;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class AuctionService {
    private static List<Auction> auctions = new ArrayList<>();

    static {
        // Initialize some dummy data here if needed
        auctions.add(new Auction(
                1,
                "Antique Vase",
                "images/antique-vase.jpg",
                1200,
                "05:12:33",
                "A beautifully crafted 18th-century vase, showcasing intricate floral engravings and timeless craftsmanship. This elegant piece features a classic silhouette with delicate hand-painted patterns in rich cobalt blue and ivory hues. A true testament to historical artistry, it stands as a prized possession for antique collectors and interior decor enthusiasts alike. Ideal for display in a living room, library, or collector's cabinet.",
                LocalDateTime.now().minusHours(1),
                LocalDateTime.now().plusHours(5)
        ));
        auctions.add(new Auction(
                2,
                "Vintage Watch",
                "images/vintage-watch.jpg",
                300,
                "02:01:15",
                "A timeless vintage wristwatch featuring a polished stainless steel case and a hand-stitched leather strap. With its classic Roman numeral dial and precision mechanical movement, this elegant timepiece embodies the sophistication and charm of a bygone era. Perfect for collectors and style connoisseurs seeking authenticity and elegance in every tick.",
                LocalDateTime.now().minusHours(1),
                LocalDateTime.now().plusHours(0)
        ));
        auctions.add(new Auction(
                3,
                "Antiqu Gramaphone",
                "images/antiqu-gramaphone.jpg",
                100,
                "02:12:33",
                "A charming antique gramophone featuring a classic brass horn and wooden base, reminiscent of early 20th-century sound technology. This collectible piece combines nostalgic design with authentic craftsmanship, perfect for music lovers and vintage decor enthusiasts. Add a touch of history and elegance to your collection with this timeless audio treasure.",
                LocalDateTime.now().minusHours(1),
                LocalDateTime.now().plusHours(3)
        ));
        auctions.add(new Auction(
                4,
                "Stemmed Snake Wine Glass",
                "images/stemmed-snake-wine-glass.jpg",
                550,
                "02:01:15",
                "An exquisite stemmed wine glass featuring a unique snake design entwined around the delicate stem. Crafted from high-quality crystal, this piece blends artistry with functionality, making it a striking addition to any wine enthusiast’s collection. Perfect for adding a touch of mystique and sophistication to your dining experience or display cabinet.",
                LocalDateTime.now().minusHours(1),
                LocalDateTime.now().plusHours(8)
        ));
        auctions.add(new Auction(
                5,
                "Women Art",
                "images/vintage-women-art.jpg",
                1720,
                "05:12:33",
                "A captivating vintage painting depicting the elegance and strength of womanhood through soft brushstrokes and vibrant colors. This timeless artwork reflects a blend of classic and modern styles, making it a striking centerpiece for any art collector or enthusiast. Perfect to bring warmth and inspiration to your living space or gallery.",
                LocalDateTime.now().minusHours(1),
                LocalDateTime.now().plusHours(9)
        ));
        auctions.add(new Auction(
                6,
                "Unbranded Green Glassware",
                "images/unbranded-green-glassware.jpg",
                350,
                "02:01:15",
                "A set of elegant green glassware featuring a sleek, minimalist design that complements any table setting. Crafted from durable glass with a subtle emerald hue, these versatile pieces are perfect for both everyday use and special occasions. Ideal for collectors of unique glassware or those seeking to add a fresh pop of color to their dining experience.",
                LocalDateTime.now().minusHours(1),
                LocalDateTime.now().plusHours(11)
        ));

    }

    public static Auction getAuctionById(int id) {
        for (Auction a : auctions) {
            if (a.getId() == id) return a;
        }
        return null;
    }
    private static List<Auction> auctionList = new ArrayList<>();
    public static void updateAuction(Auction updatedAuction) {
        for (int i = 0; i < auctionList.size(); i++) {
            Auction a = auctionList.get(i);
            if (a.getId() == updatedAuction.getId()) {
                auctionList.set(i, updatedAuction); // Replace with updated auction
                break;
            }
        }
    }

    public static List<Auction> getAllAuctions() {
        return auctions;
    }
}