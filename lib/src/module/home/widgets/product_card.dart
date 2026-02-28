import 'package:flutter/material.dart';
import 'package:zavi_mart/src/data/model/product_response.dart';

class ProductCard extends StatelessWidget {
  final ProductResponse product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final rate = product.rating?.rate ?? 0.0;
    final count = product.rating?.count ?? 0;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: SizedBox(
              height: 170,
              width: double.infinity,
              child: Image.network(
                product.image ?? '',
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Center(
                  child: Icon(Icons.image_not_supported, color: Colors.grey, size: 36),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 6, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.5,
                      height: 1.3,
                      color: Colors.black87,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Rs. ${product.price?.toStringAsFixed(0) ?? '0'}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  _StarRating(rate: rate, count: count),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StarRating extends StatelessWidget {
  final double rate;
  final int count;

  const _StarRating({required this.rate, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(5, (i) {
          return Icon(
            i < rate.floor()
                ? Icons.star
                : (i < rate ? Icons.star_half : Icons.star_border),
            size: 12,
            color: Colors.amber,
          );
        }),
        const SizedBox(width: 3),
        Text('($count)', style: const TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }
}
