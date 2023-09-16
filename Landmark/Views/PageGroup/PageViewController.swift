//
//  PageViewController.swift
//  Landmark
//
//  Created by Denny Arfansyah on 11/08/23.
//

import SwiftUI
import UIKit

//struct PageViewController<Page: View>: UIViewControllerRepresentable {
//    var pages: [Page]
//    @Binding var currentPage: Int
//
////    func makeCoordinator() -> Coordinator {
////        Coordinator(self)
////    }
//
//    func makeUIViewController(context: Context) -> UIPageViewController {
//        let pageViewController = UIPageViewController(
//            transitionStyle: .scroll,
//            navigationOrientation: .horizontal)
////        pageViewController.dataSource = context.coordinator
////        pageViewController.delegate = context.coordinator
//
//        return pageViewController
//    }
//
//    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
//        pageViewController.setViewControllers(
////            [context.coordinator.controllers[currentPage]], direction: .forward, animated: true)
//    }
//}
